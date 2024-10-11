#include <iostream>
#include <vector>	

using namespace std;

/* ESPECIFICACIÓN:
* { Pre: (0 <= d <= 1000000) ^ (0 <= n <= longitud(v)) }
* { Post: apta == ( ( P.t. i: 0 <= i < n - 1 : v[i+1] - v[i] <= d ) || 
*				    ( Ex. j : 0 <= j < i : v[j+1] - v[j] > d ) ) }
* { Cota: n - i }
* { Invariante: (0 <= i < n) ^ (0 <= acumul <= d) }
* { Complejidad: O(n), donde n es el número de cotas de altura }
*/

bool resuelve(int d, vector<int> const& v) {
	bool apta = true;
	int i = 0;
	
	bool asciende = (v[0] <= v[1]);
	int acumul = 0;

	while(i+1 < v.size() && apta) {
	
		if (asciende) {

			if (v[i] < v[i + 1]) { // sigue ascendiendo 
				acumul += v[i + 1] - v[i];

				if (acumul > d)
					apta = false;
			}
			else { // cambia a desciende
				asciende = false;
				acumul = 0;
			}
		}
		else {

			acumul = 0; // ahora desciende por lo que se omite la cantidad acumulada 

			if (v[i] < v[i + 1]) { // cambia a asciende 
				asciende = true;
				acumul += v[i + 1] - v[i];

				if (acumul > d)
					apta = false;
			}
		}

		i++;
	}

	return apta;
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

	if (n > 1)
		cout << (resuelve(d, v) ? "APTA" : "NO APTA") << endl;
	else
		cout << "APTA\n";

	return true;
	
}

int main() {

	while (casoDePrueba());

	return 0;
}