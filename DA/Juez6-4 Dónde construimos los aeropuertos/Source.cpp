
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

 Escribe aqu� un comentario general sobre la soluci�n, explicando c�mo
 se resuelve el problema y cu�l es el coste de la soluci�n, en funci�n
 del tama�o del problema.

 @ </answer> */


 // ================================================================
 // Escribe el c�digo completo de tu soluci�n aqu� debajo
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
