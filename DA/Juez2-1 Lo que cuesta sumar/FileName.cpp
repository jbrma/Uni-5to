
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

 Escribe aquí un comentario general sobre la solución, explicando cómo
 se resuelve el problema y cuál es el coste de la solución, en función
 del tamaño del problema.

 @ </answer> */


 // ================================================================
 // Escribe el código completo de tu solución aquí debajo
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
