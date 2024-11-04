
/*@ <answer>
 *
 * Nombre y Apellidos: Jorge Bravo Mateos
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
using namespace std;

#include "GrafoValorado.h"  // propios o los de las estructuras de datos de clase
#include "ConjuntosDisjuntos.h"  // propios o los de las estructuras de datos de clase
#include "PriorityQueue.h"  // propios o los de las estructuras de datos de clase

/*@ <answer>

 Escribe aquí un comentario general sobre la solución, explicando cómo
 se resuelve el problema y cuál es el coste de la solución, en función
 del tamaño del problema.

 @ </answer> */


 // ================================================================
 // Escribe el código completo de tu solución aquí debajo
 // ================================================================
 //@ <answer>

class ARM_Kruskal {
private:

    vector<Arista<int>> _ARM;
    int maxAristaARM = 0;
    bool conexo = true;

public:
    
    vector<Arista<int>> const& ARM() const {
        return _ARM;
    }

    int getmaxAristaARM() const {
        return maxAristaARM;
    }

    int getConexo() const {
        return conexo;
    }

    ARM_Kruskal(GrafoValorado<int> const& g) {
        PriorityQueue<Arista<int>> pq(g.aristas());
        ConjuntosDisjuntos cjtos(g.V());
        while (!pq.empty()) {
            auto a = pq.top(); pq.pop();
            int v = a.uno(), w = a.otro(v);
            if (!cjtos.unidos(v, w)) {
                cjtos.unir(v, w);
                _ARM.push_back(a);
                maxAristaARM = a.valor();
                if (_ARM.size() == g.V() - 1) {
                    break;
                }
            }
        }
        if (cjtos.num_cjtos() > 1)
            conexo = false;
    }
};

pair<bool, int> tarzan(GrafoValorado<int> g) {

    ARM_Kruskal kruskal(g);

    return { kruskal.getConexo(), kruskal.getmaxAristaARM()};
}


bool resuelveCaso() {

    int n, m;
    cin >> n >> m;

    if (!std::cin)  // fin de la entrada
        return false;

    GrafoValorado<int> g(n);
    int u, v, valor;

    for (int i = 0; i < m; i++) {

        cin >> u >> v >> valor;
        g.ponArista({ u - 1, v - 1, valor });
    }

    if (tarzan(g).first)
        cout << tarzan(g).second << "\n";
    else
        cout << "Imposible\n";



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
