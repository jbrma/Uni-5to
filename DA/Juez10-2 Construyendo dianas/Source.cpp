
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
#include <vector>
#include <limits>
#include <algorithm>

#include "EnterosInf.h"
#include "Matriz.h"
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


//void diana(int s, int k, int val, const vector<int>& v, vector<int> &sol, vector<int>& mejorsol, int &menorDardos, int &puntAct) {
//
//    if (puntAct == val) {
//        if (mejorsol.size() < menorDardos) {
//            menorDardos = k;
//            mejorsol = sol;
//        }
//        return;
//    }
//    else if (k == s) return;
//
//    for (int i = 0; i < s; i++) {
//        sol.push_back(i);
//        puntAct += v[i];
//        menorDardos++;
//
//        if (puntAct <= val) {
//            diana(s, k + 1, val, v, sol, mejorsol, menorDardos, puntAct);
//        }
//        puntAct -= v[i];
//        menorDardos--;
//        sol.pop_back();
//    }
//}

bool resuelveCaso() {

    int v, s;
    cin >> v >> s;

    if (!std::cin)  // fin de la entrada
        return false;

    vector<int> sectores;
    sectores.push_back(0);

    int aux;
    for (int i = 0; i < s; i++) {
        cin >> aux;
        sectores.push_back(aux);
    }

    Matriz<EntInf> tirada(s + 1, v + 1, Infinito);

    tirada[0][0] = 0;

    for (int i = 1; i <= s; ++i) {
        tirada[i][0] = 0;
        for (int j = 1; j <= v; ++j) {
            if (sectores[i] > j) tirada[i][j] = tirada[i - 1][j];
            else tirada[i][j] = min(tirada[i - 1][j], tirada[i][j - sectores[i]] + 1);
        }
    }

    if (tirada[s][v] == Infinito) cout << "Imposible";
    else {
        cout << tirada[s][v] << ": ";
        vector<int> sector(s + 1, 0);
        int j = v, i = s;

        while (j > 0) {
            if (j >= sectores[i] && tirada[i][j] == tirada[i][j - sectores[i]] + 1) {
                j -= sectores[i];
                sector[i]++;
            }
            else i--;
        }

        for (int i = s; i > 0; --i) {
            for (int veces = 0; veces < sector[i]; ++veces) {
                cout << sectores[i] << " ";
            }
        }
    }

    cout << "\n";

    //vector<int> sol;
    //vector<int> mejorsol;
    //int menorDardos = 0;
    //int puntAct = 0;

    //sort(sectores.begin(), sectores.end(), greater<int>());

    //diana(s, 0, v, sectores, sol, mejorsol, menorDardos, puntAct);

    //if (mejorsol.size() > 0) {
    //    cout << mejorsol.size() - 1 << ": ";
    //    for (int i = 0; i < mejorsol.size(); i++) {
    //        cout << sectores[mejorsol[i]] << " ";
    //    }
    //}
    //else cout << "Imposible";
    //cout << "\n";

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
