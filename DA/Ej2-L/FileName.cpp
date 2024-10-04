
/*@ <answer>
 *
 * Nombre y Apellidos: Jorge Bravo y Pablo Blanco
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
#include <queue>
#include <algorithm>
using namespace std;

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

struct Tarea {
    int ini, fin, tiempo;
    bool operator<(Tarea const& a)const {
        return a.ini < ini;
    }
};

bool resuelveCaso() {

    // leer los datos de la entrada

    int n, m, t;
    cin >> n >> m >> t;

    if (!std::cin)  // fin de la entrada
        return false;

    priority_queue<Tarea> tareas;
    int ini, fin, repe;

    //Leemos las tareas
    
    for (int i = 0; i < n; i++) {
        cin >> ini >> fin;
        tareas.push({ ini, fin, 0 });
    }

    for (int i = 0; i < m; i++) {
        cin >> ini >> fin >> repe;
        tareas.push({ ini, fin, repe});
    }

    bool hayConflicto = false;
    int termina = 0;

    while (!hayConflicto && tareas.top().ini < t && !tareas.empty()) {
        auto tareActual = tareas.top();
        tareas.pop();
        hayConflicto = termina > tareActual.ini; // comprobamos que el fin de la tarea anterior sea mayor 
                                                 //  que la tarea actual, así sabemos que hay conflicto
        termina = tareActual.fin;

        if (tareActual.tiempo > 0) //si la tarea se repite la volvemos a meter a la cola
            tareas.push({ tareActual.ini + tareActual.tiempo, tareActual.fin + tareActual.tiempo, tareActual.tiempo });
    }

    // escribir la solución

    if (hayConflicto)
        cout << "SI\n";
    else
        cout << "NO\n";

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
