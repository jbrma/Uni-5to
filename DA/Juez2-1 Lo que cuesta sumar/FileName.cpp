
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
#include <vector>
using namespace std;

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

long long int esfuerzo(PriorityQueue<long long int> pq) {

    long long int sol = 0;

    while (pq.size() > 1) {
        long long int primero = pq.top(); pq.pop();
        long long int segundo = pq.top(); pq.pop();

        sol += primero + segundo;
        pq.push(primero + segundo);
    }

    return sol;
}

bool resuelveCaso() {

    int n;
    cin >> n;

    if (n == 0)  // fin de la entrada
        return false;

    PriorityQueue<long long int> pq;
    for (int i = 0; i < n; i++) {
        long long int a;
        cin >> a;
        pq.push(a);
    }
    
    cout << esfuerzo(pq) << "\n";

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
