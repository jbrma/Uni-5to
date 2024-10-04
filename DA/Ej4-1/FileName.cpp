
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
using namespace std;

#include "IndexPQ.h"  // propios o los de las estructuras de datos de clase

/*@ <answer>

 Escribe aquí un comentario general sobre la solución, explicando cómo
 se resuelve el problema y cuál es el coste de la solución, en función
 del tamaño del problema.

 @ </answer> */


 // ================================================================
 // Escribe el código completo de tu solución aquí debajo
 // ================================================================
 //@ <answer>

struct Bandada {
    int ini, fin, m;
};

int encabeza(IndexPQ<int, int> &bandada) {

    return 0;
}

bool resuelveCaso() {

    // leer los datos de la entrada

    int primero, parejas;
    cin >> primero >> parejas;

    if (primero == 0 && parejas == 0)
        return false;

    IndexPQ<int, int> bandada(parejas*2);
    int ini, fin = 0, m = 0;
    cin >> ini;

    int aux = 0, p1, p2;

    while (aux < parejas) {
        cin >> p1 >> p2;
        bandada.push(p1, 1);
        bandada.push(p2, 2);
        cout << encabeza(bandada) << " ";
        aux++;
    }
    cout << "\n";

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
