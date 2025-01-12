
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
#include <queue>

using namespace std;

#include "Grafo.h"

/*@ <answer>

 Escribe aquí un comentario general sobre la solución, explicando cómo
 se resuelve el problema y cuál es el coste de la solución, en función
 del tamaño del problema.

 @ </answer> */


 // ================================================================
 // Escribe el código completo de tu solución aquí debajo
 // ================================================================
 //@ <answer>

void bfs(Grafo const& g, int s, int ttl, int &sol) {
    queue<int> q;
    vector<bool> visit(g.V());
    vector<int> dist(g.V());
    vector<int> ant(g.V());

    dist[s] = 0; visit[s] = true;
    q.push(s);
    while (!q.empty()) {
        int v = q.front(); q.pop();
        for (int w : g.ady(v)) {
            if (!visit[w]) {
                ant[w] = v; 
                dist[w] = dist[v] + 1; 
                if (dist[w] <= ttl) sol++;
                visit[w] = true;
                q.push(w);
            }
        }
    }
}

bool resuelveCaso() {

    int n, c;
    cin >> n >> c;

    if (!std::cin)  // fin de la entrada
        return false;

    Grafo g(n);

    int u, v;
    for (int i = 0; i < c; i++) {
        cin >> u >> v;
        g.ponArista(u - 1, v - 1);
    }
    
    int k; cin >> k;
    int origen, ttl;
    for (int i = 0; i < k; i++) {
        cin >> origen >> ttl;

        int sol = 1;
        bfs(g, origen - 1, ttl, sol);
        cout << n - sol << "\n";
    }
    cout << "---\n";

    return true;
}

//@ </answer>
//  Lo que se escriba dejado de esta línea ya no forma parte de la solución.

int main() {
    // ajustes para que cin extraiga directamente de un fichero
#ifndef DOMJUDGE
    std::ifstream in("casos.txt");
    auto cinbuf = std::cin.rdbuf(in.rdbuf());
#endif

    while (resuelveCaso());

    // para dejar todo como estaba al principio
#ifndef DOMJUDGE
    std::cin.rdbuf(cinbuf);
    system("PAUSE");
#endif
    return 0;
}
