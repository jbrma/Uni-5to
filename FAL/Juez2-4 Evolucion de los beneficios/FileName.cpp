#include <iostream>
#include <vector>

using namespace std;

/* ESPECIFICACION:
* { Pre: (0 <= n <= longitud(v)) ^ (a1 < a2) }
* { Post: ret = ( P.t. a : a1 < a <= a2: a ) }
* { Cota: n - i}
* { Invariante: (1 <= i <= n) ^ ( a1 <= max <= a2 ) }
* { Complejidad: O(n), donde n es el numero de elementos del vector }
*/

vector<int> evolucion(vector<int> const& v, int a1) {

	vector<int> ret;
	
	int i = 1, max = v[0];
	while (i < v.size()) {

		if (v[i] > max) {
			max = v[i];
			ret.push_back(i + a1);
		}

		i++;
	}

	return ret;
}

void casoDePrueba() {
	// Resuelve un caso de prueba

	int a1, a2;
	cin >> a1 >> a2;

	vector<int> v(a2 - a1 + 1);

	for (int i = 0; i < (a2 - a1 + 1); ++i) {
		cin >> v[i];
	}

	auto sol = evolucion(v, a1);
	for (int i = 0; i < sol.size(); ++i) {
		cout << sol[i] << " ";
	}
	cout << "\n";
}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;

}