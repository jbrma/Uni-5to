
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


pair<bool, int> sumidero(Digrafo const& g) {
   
    Digrafo inverso = g.inverso();

    for (int i = 0; i < g.V(); i++) {

        if ((g.ady(i).size() == 0) && (inverso.ady(i).size() == g.V() - 1)) return { true, i };
    }

    return { false, 0 };
}

bool resuelveCaso() {

    int n, m;
    cin >> n >> m;

    if (!std::cin)  // fin de la entrada
        return false;

    Digrafo dg(n);
    int v, w;
    for (int i = 0; i < m; i++) {
        cin >> v >> w;
        dg.ponArista(v, w);
    }

    auto a = sumidero(dg);

    if (a.first) cout << "SI " << a.second << "\n";
    else cout << "NO\n";

    //cout << (a.first ? "SI " << a.second << "\n" : "NO\n");

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
