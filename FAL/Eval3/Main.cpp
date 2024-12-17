#include <iostream>
#include <vector>

using namespace std;


/*
Coste del algoritmo:

Caso base:
    - Cuando ini > fin o ini == fin, se realiza una operación constante: O(1).

Caso recursivo:
    - Se divide el rango [ini, fin] en dos partes, lo que reduce el tamaño del problema a la mitad en cada llamada: O(n / 2).

Despliegue:
    - Cada nivel de recursión realiza una operación constante y hace una llamada recursiva con la mitad del rango.
    - Por lo tanto, el tiempo total es proporcional a la cantidad de veces que el rango se puede dividir por 2, lo que ocurre log(n) veces.

Complejidad total:
    - **O(log n)** en el peor caso, ya que la profundidad máxima de la recursión es log(n).
*/


bool infiltrado(int ini, int fin, int min, int max, const vector<int>& v) {
    if (ini > fin) { // Caso base: vector vacío o rango inválido
        return false;
    }

    if (ini == fin) { // Caso base: un solo elemento
        return v[ini] != min && v[ini] != max;
    }

    int mitad = (ini + fin) / 2;

    if (v[mitad] == min) {
        return infiltrado(mitad + 1, fin, min, max, v);
    }
    else if (v[mitad] == max) {
        return infiltrado(ini, mitad - 1, min, max, v);
    }
    else {
        return true; // Se encontró un infiltrado
    }
}

bool resuelveCaso() {
    int n;
    cin >> n;
    if (n == -1)
        return false;

    vector<int> v(n);

    for (int& o : v)
        cin >> o;

    if (n == 0) { // Vector vacío
        cout << "NO\n";
        return true;
    }

    if (infiltrado(0, v.size() - 1, v[0], v[v.size() - 1], v))
        cout << "SI\n";
    else
        cout << "NO\n";

    return true;
}

int main() {
    while (resuelveCaso());
    return 0;
}
