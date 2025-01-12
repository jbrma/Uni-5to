
/*@ <answer>
 *
 * Nombre y Apellidos:
 *
 *@ </answer> */

#include <iostream>
#include <deque>
#include <fstream>
using namespace std;

#include "Grafo.h"  // propios o los de las estructuras de datos de clase

/*@ <answer>

 Escribe aquí un comentario general sobre la solución, explicando cómo
 se resuelve el problema y cuál es el coste de la solución, en función
 del tamaño del problema.

 @ </answer> */


 // ================================================================
 // Escribe el código completo de tu solución aquí debajo
 // ================================================================
 //@ <answer>

class Problema {
private:
    std::vector<bool> visit; // visit[v] = ¿hay camino de s a v?
    std::vector<int> ant; // ant[v] = último vértice antes de llegar a v
    int s; // vértice origen

    Grafo g;
    int vertices = 1; // contador vertices

    void leerGrafo(int a) {
        int u, w;
        for (int i = 0; i < a; i++) {
            cin >> u >> w;
            g.ponArista(u, w);
        }
    }

    void dfs(Grafo const& G, int v) { //Coste O(V+A)
        visit[v] = true;
        for (int w : G.ady(v)) {
            if (!visit[w]) {
                ant[w] = v;
                dfs(G, w);
                vertices++;
            }
        }
    }

    bool conexo() {
        return vertices == g.V();
    }

    bool aciclico() {
        return conexo() && g.A() == g.V() - 1;
    }

    // ¿hay camino del origen a v?
    bool hayCamino(int v) const {
        return visit[v];
    }

public:
    Problema(int v, int a) : g(v), visit(v, false), ant(v), s(0) {
        leerGrafo(a);
        dfs(g, s);
    }

    bool arbolLibre() {
        return aciclico();
    }
};


bool resuelveCaso() {

    int v, a;
    cin >> v;

    if (!std::cin)  // fin de la entrada
        return false;

    cin >> a;

    Problema sol(v, a);
    
    cout << (sol.arbolLibre() ? "SI\n" : "NO\n");
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
