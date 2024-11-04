#include <iostream>
#include <vector>

using namespace std;

/* ESPECIFICACIÓN:
* { Pre: (0 <= n <= longitud(v)) ^ (0 <= p < n) }
* { Post: ret = ( Ex. i, j : 0 <= i <= p , p < j < n : v[i] > v[j] ) <=> !dividido }
* { Cota: n - i + 1}
* { Invariante: (1 <= i <= n) ^ ( maxHastaP = max i : 0 <= i <= p : v[i] ) }
* { Complejidad: O(n), donde n es el número de elementos del vector }
*/

bool dividido(vector<int> const& v, int p) {

	int i = 1;
	int maxHastaP = v[0];


	while (i <= p) {

		maxHastaP = max(maxHastaP, v[i]);
		i++;
	}

	while (i < v.size() && maxHastaP < v[i]) {
		i++;
	}

	return i == v.size();
}

void casoDePrueba() {
	// Resuelve un caso de prueba
	int n, p;
	cin >> n >> p;

	vector<int> v(n);

	for (int i = 0; i < n; ++i) {
		cin >> v[i];
	}

	cout << (dividido(v, p) ? "SI" : "NO") << endl;
}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;

}