
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
#include "DigrafoValorado.h"  // propios o los de las estructuras de datos de clase

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

struct Sol {
    vector<int> dist;
    vector<AristaDirigida<int>> ulti;
};

void relajar(AristaDirigida<int> a, vector<int>& dist, vector<AristaDirigida<int>>& ulti, 
    IndexPQ<int>& pq, int orig) {
    int v = a.desde(), w = a.hasta();

    if (dist[w] > dist[v] + a.valor()) {
        dist[w] = dist[v] + a.valor(); ulti[w] = a;
        pq.update(w, dist[w]);
    }

}

void Dijkstra(Sol& s, DigrafoValorado<int> const& g, int orig) {
    IndexPQ<int> pq(g.V());
    int origen = orig;

    s.dist[origen] = 0;
    pq.push(origen, 0);
    while (!pq.empty()) {
        int v = pq.top().elem; pq.pop();
        for (auto a : g.ady(v))
            relajar(a, s.dist, s.ulti, pq, orig);
    }

}

bool resuelveCaso() {
    Sol s;
    int N, C;
    cin >> N >> C;

    if (!std::cin)  // fin de la entrada
        return false;

    DigrafoValorado<int> g(N); // Ambos sentidos

    int u, w, v;
    for (int i = 0; i < C; ++i) {
        cin >> u >> w >> v;
        g.ponArista({ u - 1, w - 1, v });
    }

    int O, P; cin >> O >> P;

    s.dist.resize(g.V(), INF);
    s.ulti.resize(g.V());

    Dijkstra(s, g, O - 1);

    vector<int> casas(P);
    int total = 0;
    bool imp = false;

    for (int i = 0; i < P; i++) {
        cin >> casas[i];
        if (s.dist[casas[i] - 1] != INF) total += s.dist[casas[i] - 1];
        else imp = true;
    }

    s.dist.clear();
    s.dist.resize(g.V(), INF);

    s.ulti.clear();
    s.ulti.resize(g.V());

    Dijkstra(s, g.inverso(), O - 1);

    for (int i = 0; i < casas.size(); i++) {
        if (s.dist[casas[i] - 1] != INF) total += s.dist[casas[i] - 1];
        else imp = true;
    }

    if (imp) cout << "Imposible\n";
    else cout << total << "\n";


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
