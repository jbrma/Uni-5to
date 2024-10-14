#include <iostream>
#include <vector>	

using namespace std;

/* ESPECIFICACIÓN:
* { Pre: 0 <= n <= longitud(v) }
* { Post: ( Ex. i : 0 <= i < n - 1 : (v[i+1] - v[i] + acumul) > d ) <=> !apta }
* { Cota: n - i }
* { Invariante: (0 <= i < n - 1) ^ (((v[i+1] - v[i]) + acumul) <= d) }
* { Complejidad: O(n), donde n es el número de cotas de altura }
*/

bool resuelve(int d, vector<int> const& v) {

	int i = 0;
	int acumul = 0;

	while( i+1 < v.size() && (v[i + 1] - v[i] + acumul) <= d) {

		if (v[i] < v[i + 1]) {
			acumul += v[i + 1] - v[i];
		}
		else
			acumul = 0;

		i++;
	}

	return i+1==v.size();
}

bool casoDePrueba() {
	// Lectura de la entrada (primer valor en el caso de que sea m�s de uno)

	int d, n;
	if (!(cin >> d >> n)) // Fin de la entrada
		return false;
	
	vector<int> v(n);

	for (int i = 0; i < n; i++) {
		cin >> v[i];
	}

	cout << (resuelve(d, v) ? "APTA" : "NO APTA") << endl;
	
	return true;
	
}

int main() {

	while (casoDePrueba());

	return 0;
}