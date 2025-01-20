
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

#include "GrafoValorado.h"  // propios o los de las estructuras de datos de clase
#include "ConjuntosDisjuntos.h"  // propios o los de las estructuras de datos de clase
#include "PriorityQueue.h"  // propios o los de las estructuras de datos de clase
#include "IndexPQ.h"

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
    //vector<int> dist;
    //vector<Arista<int>> ulti;
    int max;
};

bool ARM_Kruskal(Sol &e, GrafoValorado<int> const& g, int o, int d) {
    PriorityQueue<Arista<int>> pq(g.aristas());
    ConjuntosDisjuntos cjtos(g.V());
    vector<Arista<int>> _ARM;

    while (!pq.empty()) {
        auto a = pq.top(); pq.pop();
        int v = a.uno(), w = a.otro(v);
        if (!cjtos.unidos(v, w)) {
            cjtos.unir(v, w);
            _ARM.push_back(a); 

            if (cjtos.unidos(o, d)) {
                e.max = a.valor();
                break;
            }
            //coste += a.valor();
            if (_ARM.size() == g.V() - 1) break;
        }
    }

    return cjtos.unidos(o, d);
}

//using Camino = deque<int>;
//
//Camino camino(Sol &e, int orig, int v) {
//    Camino cam;
//    // recuperamos el camino retrocediendo
//    for (int a = v; a != orig; a = e.ulti[a].uno()) {
//        cam.push_front(a);
//        e.max = max(e.max, e.ulti[a].valor());
//    }
//    cam.push_front(orig);
//    return cam;
//}
//
//void relajar(Sol &e, IndexPQ<int> &pq, Arista<int> a, int v) {
//    int w = a.otro(v);
//
//    if (e.dist[w] > e.dist[v] + a.valor()) {
//        e.dist[w] = e.dist[v] + a.valor(); 
//        e.ulti[w] = a;
//        pq.update(w, e.dist[w]);
//    }
//}
//
//void Dijkstra(Sol &e, IndexPQ<int>& pq, GrafoValorado<int> const& g, int orig) {
//
//    int origen = orig;
//    e.dist[origen] = 0;
//    pq.push(origen, 0);
//    while (!pq.empty()) {
//        int v = pq.top().elem; 
//        pq.pop();
//        for (auto a : g.ady(v))
//            relajar(e, pq, a, v);
//    }
//}

bool resuelveCaso() {
    Sol e;
    int n, m;
    cin >> n;

    if (!std::cin)  // fin de la entrada
        return false;

    cin >> m;

    GrafoValorado<int> g(n);

    int u, w, v;
    for (int i = 0; i < m; i++) {
        cin >> u >> w >> v;
        g.ponArista({ u - 1, w - 1, v });
    }

    int orig, dest; cin >> orig >> dest;
    e.max = 0;

    if (ARM_Kruskal(e, g, orig - 1, dest - 1)) {
        cout << e.max << "\n";
    }
    else {
        cout << "IMPOSIBLE\n";
    }

    //GrafoValorado<int> g2(n); // hacemos un grafo solo con las aristas del ARM
    //for (Arista<int> a : arm) {
    //    int v = a.uno();
    //    int w = a.otro(v);
    //    g2.ponArista({ v, w , a.valor()});
    //}

    //IndexPQ<int> pq(g.V());

    //e.dist.resize(g.V(), INF);
    //e.ulti.resize(g.V());
    //e.max = 0;


    //Dijkstra(e, pq, g, orig - 1);

    //if (e.dist[dest - 1] != INF) {
    //    auto cam = camino(e, orig - 1, dest - 1);
    //    cout << e.max << "\n";
    //}
    //else {
    //    cout << "IMPOSIBLE\n";
    //}

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
