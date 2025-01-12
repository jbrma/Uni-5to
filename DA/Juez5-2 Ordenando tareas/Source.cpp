
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
#include <vector>
#include <queue>
using namespace std;

#include "Digrafo.h"  // propios o los de las estructuras de datos de clase

/*@ <answer>

 Escribe aquí un comentario general sobre la solución, explicando cómo
 se resuelve el problema y cuál es el coste de la solución, en función
 del tamaño del problema.

 @ </answer> */


 // ================================================================
 // Escribe el código completo de tu solución aquí debajo
 // ================================================================
 //@ <answer>

struct Ent {
    vector<bool> visit; // visit[v] = ¿se ha alcanzado a v en el dfs?
    vector<int> ant; // ant[v] = vértice anterior en el camino a v
    vector<bool> apilado; // apilado[v] = ¿está el vértice v en la pila?
    bool hayciclo = false;
};

bool dfs(Ent &e, Digrafo const& g, int v, vector<int> &vec) {
    e.apilado[v] = true;
    e.visit[v] = true;
    for (int w : g.ady(v)) {
        if (e.hayciclo) // si hemos encontrado un ciclo terminamos
            return e.hayciclo;
        if (!e.visit[w]) { // encontrado un nuevo vértice, seguimos
            e.ant[w] = v; dfs(e, g, w, vec);
        }
        else if (e.apilado[w]) { // hemos detectado un ciclo
            // se recupera retrocediendo
            e.hayciclo = true;
        }
    }
    vec.push_back(v);
    e.apilado[v] = false;

    return e.hayciclo;
}

bool resuelveCaso() {

    Ent e;
    int n, m;
    cin >> n >> m;

    if (!std::cin)  // fin de la entrada
        return false;

    Digrafo dg(n);
    int v, w;
    for (int i = 0; i < m; i++) {
        cin >> v >> w;
        dg.ponArista(v - 1, w - 1);
    }

    e.ant.resize(n);
    e.apilado.resize(n, false);
    e.visit.resize(n, false);

    vector<int> vec;
    dfs(e, dg, 0, vec);

    for (int i = 0; i < n; ++i) {
        if (!e.visit[i]) dfs(e, dg, i, vec);
    }

    if (!e.hayciclo) {
        for (int i = n - 1; i >= 0; i--) {
            cout << vec[i] + 1 << " ";
        }
        cout << "\n";
    }
    else cout << "Imposible\n";

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
