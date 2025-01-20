
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
#include <limits>
#include <deque>
using namespace std;

#include "IndexPQ.h"  // propios o los de las estructuras de datos de clase
#include "GrafoValorado.h"  // propios o los de las estructuras de datos de clase
#include "DigrafoValorado.h"

/*@ <answer>

 Escribe aqu� un comentario general sobre la soluci�n, explicando c�mo
 se resuelve el problema y cu�l es el coste de la soluci�n, en funci�n
 del tama�o del problema.

 @ </answer> */


 // ================================================================
 // Escribe el c�digo completo de tu soluci�n aqu� debajo
 // ================================================================
 //@ <answer>

const int INF = std::numeric_limits<int>::max();

struct Sol {
    vector<int> dist;
    vector<int> ulti;
};

void Camino(const vector<int> &dist, vector<int> ulti, int orig, int v) {
    // recuperamos el camino retrocediendo
    deque<int> vec;
    int a;
    cout << orig + 1 << " -> ";
    for (a = ulti[v]; a != orig; a = ulti[a]) {
        vec.push_front(a);
    }
    for (int a : vec) {
        cout << a + 1 << " -> ";
    }
    cout << v + 1;
}

void relajar(AristaDirigida<int> a, vector<int>& dist, vector<int>& ulti, IndexPQ<int>& pq) {
    int v = a.desde(), w = a.hasta();

    if (dist[w] > dist[v] + a.valor()) {
        dist[w] = dist[v] + a.valor();
        ulti[w] = v;
        pq.update(w, dist[w]);
    }
}

void Dijkstra(Sol &s, DigrafoValorado<int> const& g, int orig) {
    IndexPQ<int> pq(g.V());
    int origen = orig;

    s.dist[origen] = 0;
    pq.push(origen, 0);
    while (!pq.empty()) {
        int v = pq.top().elem; pq.pop();
        for (auto a : g.ady(v))
            relajar(a, s.dist, s.ulti, pq);
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
        g.ponArista({ w - 1, u - 1, v });
    }

    int k; cin >> k;
    while (k--) {

        int orig, dest; cin >> orig >> dest;

        s.dist.resize(g.V(), INF);
        s.ulti.resize(g.V());

        Dijkstra(s, g, orig - 1);
        
        if (s.dist[dest - 1] == INF) {
            cout << "NO LLEGA\n";
        }
        else {

            cout << s.dist[dest - 1] << ": ";
            Camino(s.dist, s.ulti, orig - 1, dest - 1);
            cout << "\n";
        }

        s.dist.clear();
        s.ulti.clear();
    }
    cout << "---\n";

    return true;
}

//@ </answer>
//  Lo que se escriba dejado de esta l�nea ya no forma parte de la soluci�n.

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
