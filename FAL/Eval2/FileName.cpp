// Omar López y Jorge Bravo
#include <iostream>
#include <climits>

using namespace std;

struct res {
	int valor;  
	int contador; 
};

res resolver(int n, int menor, int& mayor) {

    if (n < 10) { // Caso base, pos = 1, devuelve el propio n * 3 mas el menor que se ha guardado en la dcha
        mayor = n;
        return { (n * 3) + menor, 2 };
    }
    else { // Caso recursivo

        // Actualizamos menor en la ida
        res sol = resolver(n / 10, min(menor, n % 10), mayor); // Llamada recursiva

        if (sol.contador % 2 == 0) {
            sol.valor += (n % 10 * 2) + mayor;
        }
        else {
            sol.valor += (n % 10 * 3) + menor;
        }
        mayor = max(mayor, n % 10); // Actualizamos mayor en la vuelta
        sol.contador++;
        return sol;
    }
}

bool casoDePrueba() {
	// Lectura de la entrada
	int n;
	cin >> n;

	int a = INT_MAX, b = INT_MIN;
	cout << resolver(n, a, b).valor << "\n";

	return true;
}

int main() {

	int numcasos;
	cin >> numcasos;

	while (numcasos--)
		casoDePrueba();

	return 0;
}