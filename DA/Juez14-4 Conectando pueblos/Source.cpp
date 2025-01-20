
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
using namespace std;

#include "GrafoValorado.h"  // propios o los de las estructuras de datos de clase
#include "ConjuntosDisjuntos.h"  // propios o los de las estructuras de datos de clase
#include "PriorityQueue.h"

/*@ <answer>

 Escribe aqu� un comentario general sobre la soluci�n, explicando c�mo
 se resuelve el problema y cu�l es el coste de la soluci�n, en funci�n
 del tama�o del problema.

 @ </answer> */


 // ================================================================
 // Escribe el c�digo completo de tu soluci�n aqu� debajo
 // ================================================================
 //@ <answer>

//O(AlogA)

int ARM_Kruskal(GrafoValorado<int> const& g) {
    PriorityQueue<Arista<int>> pq(g.aristas());
    ConjuntosDisjuntos cjtos(g.V());
    vector<Arista<int>> _ARM;

    int maxArista = -1;

    while (!pq.empty()) {
        auto a = pq.top(); pq.pop();
        int v = a.uno(), w = a.otro(v);
        if (!cjtos.unidos(v, w)) {
            cjtos.unir(v, w);

            maxArista = a.valor();

            _ARM.push_back(a); 
            if (_ARM.size() == g.V() - 1) break;
        }
    }

    if (cjtos.num_cjtos() != 1) maxArista = -1;

    return maxArista;
}


void resuelveCaso() {

    int n, m;
    cin >> n >> m;

    GrafoValorado<int> g(n);

    for (int i = 0; i < m; i++) {
        int u, w, v; cin >> u >> w >> v;
        g.ponArista({ u - 1, w - 1, v });
    }

    int a = ARM_Kruskal(g);
    if (a != -1) cout << a << "\n";
    else cout << "Imposible\n";
}

//@ </answer>
//  Lo que se escriba dejado de esta l�nea ya no forma parte de la soluci�n.

int main() {
    // ajustes para que cin extraiga directamente de un fichero
#ifndef DOMJUDGE
    std::ifstream in("casos.txt");
    auto cinbuf = std::cin.rdbuf(in.rdbuf());
#endif

    int numCasos;
    std::cin >> numCasos;
    for (int i = 0; i < numCasos; ++i)
        resuelveCaso();

    // para dejar todo como estaba al principio
#ifndef DOMJUDGE
    std::cin.rdbuf(cinbuf);
    system("PAUSE");
#endif
    return 0;
}
