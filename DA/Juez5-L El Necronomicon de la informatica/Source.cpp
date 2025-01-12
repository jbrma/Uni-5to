
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <fstream>
#include <vector>
#include <queue>
using namespace std;

#include "Digrafo.h"  // propios o los de las estructuras de datos de clase

/*@ <answer>

 Escribe aqu� un comentario general sobre la soluci�n, explicando c�mo
 se resuelve el problema y cu�l es el coste de la soluci�n, en funci�n
 del tama�o del problema.

 @ </answer> */


 // ================================================================
 // Escribe el c�digo completo de tu soluci�n aqu� debajo
 // ================================================================
 //@ <answer>

struct Ent {
    vector<bool> visit; // visit[v] = �se ha alcanzado a v en el dfs?
    vector<bool> apilado; // apilado[v] = �est� el v�rtice v en la pila?
    bool hayciclo;
};

struct Nodo {
    char letra;
    int salto;
};

int dfs(Ent& e, Digrafo const& g, int v, bool &fin) {
    e.apilado[v] = true;
    e.visit[v] = true;
    for (int w : g.ady(v)) {

        if (w == g.V() - 1) fin = true;

        if (!e.visit[w]) { // encontrado un nuevo v�rtice, seguimos
            dfs(e, g, w, fin);
        }
        else if (e.apilado[w]) { // hemos detectado un ciclo
            // se recupera retrocediendo
            e.hayciclo = true;
        }
    }

    e.apilado[v] = false;

    return e.hayciclo;
}

bool resuelveCaso() {
    Ent e;
    int n;
    cin >> n;

    if (!std::cin)  // fin de la entrada
        return false;

    Digrafo dg(n + 1);
    Nodo nodo;

    for (int i = 0; i < n; i++) {
        cin >> nodo.letra;

        if (nodo.letra == 'A') {
            dg.ponArista(i, i + 1);
        }
        else if (nodo.letra == 'C') {
            cin >> nodo.salto;
            dg.ponArista(i, nodo.salto - 1);
            dg.ponArista(i, i + 1);
        }
        else if (nodo.letra == 'J') {
            cin >> nodo.salto;
            dg.ponArista(i, nodo.salto - 1);
        }
    }

    e.apilado.resize(n + 1, false);
    e.visit.resize(n + 1, false);
    e.hayciclo = false;
    bool fin = false;

    dfs(e, dg, 0, fin);

    if (!fin) cout << "NUNCA\n";
    else {
        if (!e.hayciclo) cout << "SIEMPRE\n";
        else cout << "A VECES\n";
    }

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
