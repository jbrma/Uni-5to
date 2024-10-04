
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

 Escribe aqu� un comentario general sobre la soluci�n, explicando c�mo
 se resuelve el problema y cu�l es el coste de la soluci�n, en funci�n
 del tama�o del problema.

 @ </answer> */


 // ================================================================
 // Escribe el c�digo completo de tu soluci�n aqu� debajo
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
