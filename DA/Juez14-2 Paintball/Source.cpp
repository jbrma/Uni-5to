
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
#include <queue>

using namespace std;

#include "Grafo.h"

/*@ <answer>

 Escribe aqu� un comentario general sobre la soluci�n, explicando c�mo
 se resuelve el problema y cu�l es el coste de la soluci�n, en funci�n
 del tama�o del problema.

 @ </answer> */


 // ================================================================
 // Escribe el c�digo completo de tu soluci�n aqu� debajo
 // ================================================================
 //@ <answer>

bool bipartito(vector<int> &visit, Grafo const& g, int s) {

    for (int w : g.ady(s)) {
        if (visit[w] == 0) {
            visit[w] = -visit[s];
            if (!bipartito(visit, g, w)) return false;
        }
        else if (visit[w] == visit[s]) return false;
    }
    return true;
}

bool resuelveCaso() {
    int a, r;
    cin >> a;

    if (!std::cin)  // fin de la entrada
        return false;

    cin >> r;

    Grafo g(a);
    int uno, dos;
    for (int i = 0; i < r; i++) {
        cin >> uno >> dos;
        g.ponArista(uno - 1, dos - 1);
    }

    vector<int> visit(a, 0);
    visit[0] = 1;
    
    if (a < 2) cout << "NO\n";
    else cout << (bipartito(visit, g, 0) ? "SI\n" : "NO\n");

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
