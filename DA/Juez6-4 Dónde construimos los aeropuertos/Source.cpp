
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
using namespace std;

#include "GrafoValorado.h"  // propios o los de las estructuras de datos de clase
#include "ConjuntosDisjuntos.h"
#include "PriorityQueue.h"

/*@ <answer>

 Escribe aquí un comentario general sobre la solución, explicando cómo
 se resuelve el problema y cuál es el coste de la solución, en función
 del tamaño del problema.

 @ </answer> */


 // ================================================================
 // Escribe el código completo de tu solución aquí debajo
 // ================================================================
 //@ <answer>

void ARM_Kruskal(GrafoValorado<int> const& g, int &nconj, int &coste, int A) {

    vector<Arista<int>> _ARM;
    PriorityQueue<Arista<int>> pq(g.aristas());
    ConjuntosDisjuntos cjtos(g.V());
    while (!pq.empty()) {
        auto a = pq.top(); pq.pop();
        int v = a.uno(), w = a.otro(v);
        if (A <= a.valor()) {
            break;
        }
        else if (!cjtos.unidos(v, w)) {
            cjtos.unir(v, w);
            _ARM.push_back(a); 
            coste += a.valor();
            if (_ARM.size() == g.V() - 1) break;
        }
    }
    nconj = cjtos.num_cjtos();
    coste += nconj * A;
}

bool resuelveCaso() {

    int N, M, A;
    cin >> N >> M >> A;

    if (!std::cin)  // fin de la entrada
        return false;

    GrafoValorado<int> gv(N);

    for (int i = 0; i < M; ++i) {
        int u, w, v; cin >> u >> w >> v;
        gv.ponArista({ u - 1, w - 1, v });
    }
    
    int coste = 0, nconj = 0;
    ARM_Kruskal(gv, nconj, coste, A);

    cout << coste << " " << nconj << "\n";

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
