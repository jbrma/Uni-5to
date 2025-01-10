#include <iostream>
#include <vector>
#include <climits>

using namespace std;

/* ESPECIFICACIÓN:
* 
* { Pre: 0 <= n <= longitud(v) ^ k > 0 }
* { Post: sol = Ex. a, b : 0 <= a <= b <= n : (Sum i : a <= i < b: v[i] = k) ? min(b - a) : (n + 1)) }
* { Invariante: 0 <= i <= j <= n ^ 0 <= acum ^ 1 <= sol <= n + 1 ^ (acum == k) ? sol = j - i : sol = n + 1}
* { Cota: n - j + 1 }
* { Complejidad: O(n), donde n es el numero de elementos del vector, y en cualquier caso, habría que recorrer todo el vector}
* 
*/

int longitudM(const vector<int>& v, int k) {

	int i = 0, j = 0, acum = 0, sol = v.size() + 1;

	while (j < v.size() || acum >= k) {

		if (acum < k) {
			acum += v[j];
			j++;
		}
		else {
			acum -= v[i];
			i++;
		}

		if (acum == k) {
			sol = min(sol, j - i);
		}
	}

	return sol;
}


bool casoDePrueba() {

	int n, k;
	cin >> n;

	if (n == -1) // Fin de la entrada
		return false;

	vector<int> v(n);
	for (int i = 0; i < n; ++i) {
		cin >> v[i];
	}
	cin >> k;

	cout << longitudM(v, k) << "\n";
	
	return true;
	
}

int main() {

	while (casoDePrueba());

	return 0;
}