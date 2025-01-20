
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
#include <deque>
#include <algorithm>
#include <limits>
using namespace std;

#include "GrafoValorado.h"  // propios o los de las estructuras de datos de clase
#include "IndexPQ.h"

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

struct Ent {
    vector<int> dist;
    vector<int> ulti;
    int caminos;
    pair<int, int> minCalles;
};


void camino(Ent &e, int origen, int v) {

    int a;
    int calles = 1;
    int coste = 0;
    for (a = e.ulti[v]; a != origen; a = e.ulti[a]) {
        calles++;
    }
    coste = e.dist[v];
    e.minCalles.first = min(e.minCalles.first, calles);
    if (calles == e.minCalles.first) e.minCalles.second = coste;
}

void relajar(Ent &e, Arista<int> a, vector<int> &caminos, IndexPQ<int> &pq, int v, int orig, int dest) {
    
    int w = a.otro(v);
    if (e.dist[w] > e.dist[v] + a.valor()) {
        e.dist[w] = e.dist[v] + a.valor(); 
        e.ulti[w] = v;
        pq.update(w, e.dist[w]);
    }
   
    if (w == dest) {
        e.caminos++;
        camino(e, orig, dest);
    }
}

void Dijkstra(Ent &e, GrafoValorado<int> const& g, vector<int> &caminos, IndexPQ<int>& pq, int orig, int dest) {

    caminos[orig] = 1;
    e.dist[orig] = 0;
    pq.push(orig, 0);
    while (!pq.empty()) {
        int v = pq.top().elem; pq.pop();
        for (auto a : g.ady(v))
            relajar(e, a, caminos, pq, v, orig, dest);
    }
}

bool resuelveCaso() {

    Ent e;
    int n, c;
    cin >> n;

    if (!std::cin)  // fin de la entrada
        return false;

    cin >> c;

    GrafoValorado<int> g(n);
    for (int i = 0; i < c; i++) {
        int u, w, v; cin >> u >> w >> v;
        g.ponArista({ u - 1, w - 1, v });
    }

    int k; cin >> k;
    while (k--) {

        int orig, dest; cin >> orig >> dest;

        e.dist.resize(g.V(), INF);
        e.ulti.resize(g.V());
        e.caminos = 0;
        e.minCalles.first = INF;
        
        IndexPQ<int> pq(g.V());
        vector<int> caminos(g.V());

        Dijkstra(e, g, caminos, pq, orig - 1, dest - 1);

        if (e.dist[dest - 1] != INF) {

            cout << e.dist[dest - 1];

            if (e.minCalles.second == e.dist[dest - 1]) cout << " SI\n";
            else cout << " NO\n";
        }
        else cout << "SIN CAMINO\n";
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
