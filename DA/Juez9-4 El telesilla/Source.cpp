
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

 Escribe aqu� un comentario general sobre la soluci�n, explicando c�mo
 se resuelve el problema y cu�l es el coste de la soluci�n, en funci�n
 del tama�o del problema.

 @ </answer> */


 // ================================================================
 // Escribe el c�digo completo de tu soluci�n aqu� debajo
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
