#include <iostream>
#include <vector>

using namespace std;

/* ESPECIFICACION:
* 
* { Pre: 0 <= n <= longitud(v) ^ c > 0}
* { Post: ret = Ex. a, b : 0 <= a <= b < n : (Sum i : a <= i <= b : v[i]) = c }
* { Invariante: 0 <= i <= j < n ^ acum = Sum p : i <= p <= j : v[p] }
* { Cota: n - j + 1}
* { Coste: O(n) lineal, ...}
*/

bool ctramo(const vector<int> &v, int c) {

	int i = 0, j = 0, acum = 0;
	bool tramo = false;

	while ((j < v.size() || acum > c) && !tramo) {

		if (acum <= c) {
			acum += v[j];
			j++;
		}
		else {
			acum -= v[i];
			i++;
		}

		if (acum == c) tramo = true;
	}

	return tramo;
}

bool casoDePrueba() {

	int n, c;
	cin >> n;

	if (n == -1) // Fin de la entrada
		return false;
	else {
		
		vector<int> v(n);
		for (int i = 0; i < n; i++) {
			cin >> v[i];
		}

		cin >> c;

		cout << (ctramo(v, c) ? "SI\n" : "NO\n");

		return true;
	}
}

int main() {

	while (casoDePrueba());

	return 0;
}