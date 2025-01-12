﻿
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
#include <vector>
using namespace std;

#include "GrafoValorado.h"  // propios o los de las estructuras de datos de clase

/*@ <answer>

 Escribe aqu� un comentario general sobre la soluci�n, explicando c�mo
 se resuelve el problema y cu�l es el coste de la soluci�n, en funci�n
 del tama�o del problema.

 @ </answer> */


 // ================================================================
 // Escribe el c�digo completo de tu soluci�n aqu� debajo
 // ================================================================
 //@ <answer>


class Camiones {
private:
    GrafoValorado<int> g;
    vector<bool> visit;

    void leerGrafo(int A) {
        int n1, n2, anchura;
        for (int i = 0; i < A; i++) {
            cin >> n1 >> n2 >> anchura;
            g.ponArista({ n1 - 1,n2 - 1,anchura });
        }
    }

    bool dfs(int v, int destino, int ancho) {
        visit[v] = true;
        bool b = false;
        for (auto a : g.ady(v)) {
            if (a.valor() >= ancho) {
                int w = a.otro(v);
                if (w == destino) {
                    b = true;
                }
                else if (!visit[w]) {
                    b = b || dfs(w, destino, ancho);
                }

            }
        }
        return b;
    }


public:
    Camiones(int V, int A) : g(V), visit(V, false) {
        leerGrafo(A);
    }

    void tratarCasos() {
        int K, n1, n2, anchura; cin >> K;
        for (int i = 0; i < K; i++) {
            cin >> n1 >> n2 >> anchura;
            if (dfs(n1 - 1, n2 - 1, anchura)) {
                cout << "SI\n";
            }
            else {
                cout << "NO\n";
            }
            vector<bool>aux(g.V(), false);
            visit = aux;
        }
    }

};



bool resuelveCaso() {

    int V; cin >> V;
    int A; cin >> A;

    if (!std::cin)  // fin de la entrada
        return false;

    Camiones c(V, A);

    c.tratarCasos();

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