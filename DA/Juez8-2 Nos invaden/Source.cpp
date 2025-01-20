/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
#include <vector>
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

    int N;
    cin >> N;
    if (!std::cin) return false;

    vector<int> enemigos(N);
    for (int i = 0; i < N; i++) {
        cin >> enemigos[i];
    }

    vector<int> defensa(N);
    for (int i = 0; i < N; i++) {
        cin >> defensa[i];
    }

    sort(enemigos.begin(), enemigos.end());
    sort(defensa.begin(), defensa.end());

    int cont = 0;
    int j = 0;
    for (int i = 0; i < N && j < N; i++) {
        if (enemigos[i] <= defensa[j]) cont++; 
        else if (j < N) i--;
        j++;
    }

    cout << cont << "\n";

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