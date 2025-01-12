
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
#include <vector>
using namespace std;

#include "DigrafoValorado.h"  // propios o los de las estructuras de datos de clase
#include "IndexPQ.h"
#include <limits>

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
    vector<AristaDirigida<int>> ulti;
};

//void caminofunc(int v, int origen, Ent &e, vector<int>& cam) {
//    // recuperamos el camino retrocediendo
//    AristaDirigida<int> a;
//    for (a = e.ulti[v]; a.desde() != origen; a = e.ulti[a.desde()])
//        cam.push_back(a.hasta());
//    cam.push_back(a.hasta());
//}

void relajar(AristaDirigida<int> a, vector<int>& dist, vector<AristaDirigida<int>>& ulti,
    IndexPQ<int>& pq, const vector<int> &pag) {

    int v = a.desde(), w = a.hasta();
    if (dist[w] > dist[v] + a.valor() + pag[w]) {
        dist[w] = dist[v] + a.valor() + pag[w]; 
        ulti[w] = a;
        pq.update(w, dist[w]);
    }
}

void Dijkstra(Ent &e, IndexPQ<int> &pq, DigrafoValorado<int> const& g, int orig,
    const vector<int> &pag) {
    
    e.dist[orig] = 0 + pag[orig];
    pq.push(orig, 0);
    while (!pq.empty()) {
        int v = pq.top().elem; pq.pop();
        for (auto a : g.ady(v))
            relajar(a, e.dist, e.ulti, pq, pag);
    }
}

bool resuelveCaso() {
    Ent e;
    int N;
    cin >> N;

    if (N == 0)
        return false;

    DigrafoValorado<int> dgv(N);

    vector<int> pag(N);
    for (int i = 0; i < N; i++) {
        cin >> pag[i];
    }

    int M; cin >> M;
    int u, w, v;
    for (int i = 0; i < M; i++) {
        cin >> u >> w >> v;
        dgv.ponArista({ u - 1, w - 1, v });
    }


    e.dist.resize(N, INF);
    e.ulti.resize(N);

    IndexPQ<int> pq(N);
    vector<int> camino;

    Dijkstra(e, pq, dgv, 0, pag);

    if (e.dist[N - 1] != INF) {

        cout << e.dist[N-1] << "\n";
    }
    else cout << "IMPOSIBLE\n";


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
