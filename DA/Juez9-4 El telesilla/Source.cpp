
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
#include <vector>
#include <deque>
#include <algorithm>

using namespace std;

/*@ <answer>

 Escribe aquí un comentario general sobre la solución, explicando cómo
 se resuelve el problema y cuál es el coste de la solución, en función
 del tamaño del problema.

 @ </answer> */


 // ================================================================
 // Escribe el código completo de tu solución aquí debajo
 // ================================================================
 //@ <answer>

bool resuelveCaso() {

    int p, n;
    cin >> p >> n;

    if (!std::cin)  // fin de la entrada
        return false;

    deque<int> dq(n);

    for (int i = 0; i < n; i++) {
        cin >> dq[i];
    }

    sort(dq.begin(), dq.end());

    int sol = 0;
    while (dq.size() > 1) {
        
        if (dq.front() + dq.back() <= p) {
            sol++;
            dq.pop_back();
            dq.pop_front();
        }
        else if (dq.back() <= p) {
            sol++;
            dq.pop_back();
        } 
    }

    if (dq.size() == 1 && dq.front() <= p) sol++;

    cout << sol << "\n";

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
