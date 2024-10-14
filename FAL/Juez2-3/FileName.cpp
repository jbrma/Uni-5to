#include <iostream>
#include <vector>
#include <climits>

using namespace std;

/* ESPECIFICACIÓN:
* { Pre: (0 <= n <= longitud(v)) ^ (0 <= p < n) }
* { Post: ( Ex. i, j : 0 <= i <= p , p < j < n : v[i] > v[j] ) <=> !dividido }
* { Cota: n - i + 1}
* { Invariante: (0 <= i < n) ^ ( max = P.t. i : 0 <= i <= p : max(v[i] ) 
								 min = P.t. j : p < j < n : min(v[j])  ) }
* { Complejidad: O(n), donde n es el número de elementos del vector }
*/

bool dividido(vector<int> const& v, int p) {

	int i = 0;
	int max = INT_MIN, min = INT_MAX;


	while (i < v.size() && max < min) {

		if (i <= p) {

			if (max < v[i])
				max = v[i];
		}
		else {

			if (min > v[i])
				min = v[i];
		}

		i++;
	}

	return max < min;
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