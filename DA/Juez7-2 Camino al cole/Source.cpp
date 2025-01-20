
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
#include <limits>
using namespace std;

#include "IndexPQ.h"  // propios o los de las estructuras de datos de clase
#include "GrafoValorado.h"  // propios o los de las estructuras de datos de clase

/*@ <answer>

 Escribe aquí un comentario general sobre la solución, explicando cómo
 se resuelve el problema y cuál es el coste de la solución, en función
 del tamaño del problema.

 @ </answer> */


 // ================================================================
 // Escribe el código completo de tu solución aquí debajo
 // ================================================================
 //@ <answer>

const int INF = std::numeric_limits<int>::max();


void relajar(Arista<int> a, int v, vector<int> &dist, vector<Arista<int>> &ulti, IndexPQ<int> &pq,
    vector<int> &caminos) {
    int w = a.otro(v);

    if (dist[w] > dist[v] + a.valor()) {
        dist[w] = dist[v] + a.valor();
        caminos[w] = caminos[v];
        ulti[w] = a;
        pq.update(w, dist[w]);
    }
    else if (dist[w] == dist[v] + a.valor()) {
        caminos[w] += caminos[v];
    }
}

int Dijkstra(GrafoValorado<int> const& g, int orig){
    vector<int> dist(g.V(), INF);
    vector<Arista<int>> ulti(g.V());
    IndexPQ<int> pq(g.V());
    vector<int> caminos(g.V(), 0);
    int origen = orig;
    caminos[origen] = 1;

    dist[origen] = 0;
    pq.push(origen, 0);
    while (!pq.empty()) {
        int v = pq.top().elem; pq.pop();
        for (auto a : g.ady(v))
            relajar(a, v, dist, ulti, pq, caminos);
    }

    return caminos[g.V() - 1];
}

bool resuelveCaso() {
    int N, C;
    cin >> N >> C;

    if (!std::cin)  // fin de la entrada
        return false;

    GrafoValorado<int> g(N); // Ambos sentidos

    int u, w, v;
    for (int i = 0; i < C; ++i) {
        cin >> u >> w >> v;
        g.ponArista({ u - 1, w - 1, v }); 
    }

    cout << Dijkstra(g, 0) <<"\n";

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
