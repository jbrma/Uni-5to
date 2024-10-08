#include <iostream>
#include <vector>

using namespace std;

/* ESPECIFICACIÓN:
* { Pre: 0 <= n <= longitud(num) }
* { Post: ret = Ex. i : 0 <= i < n : num[i] }
* { Cota: i, es decreciente en cada iteración, por lo que el bucle terminará}
* { Invariante: suma = suma(num[j] : i < j < n) }
* { Complejidad: O(n) donde n es el numero de elementos del vector. Es lineal, ya que en el peor caso el bucle debe recorrer todo el vector y solo una vez.}
*/


bool cumple(vector<int> const& num) {

	int i = num.size()-1;
	int suma = 0;

	while (i >= 0 && suma != num[i]) {

		suma += num[i];
		i--;
	}
	return i >= 0;
}

bool casoDePrueba() {
	// Lectura de la entrada
	int n;
	cin >> n;

	if (n == 0) // Fin de la entrada
		return false;

	vector<int> num(n);

	for (int i = 0; i < n; i++) {
		cin >> num[i];
	}

	cout << (cumple(num) ? "YES\n" : "NO\n");
	
	return true;
	
}

int main() {

	while (casoDePrueba());

	return 0;
}

