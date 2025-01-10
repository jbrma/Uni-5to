#include <iostream>
#include <vector>

using namespace std;

/* ESPECIFICACION
* 
* { Pre: 0 < n <= longitud(v) ^ k > 0}
* { Post: ret = P.t. a : 0 <= a < n : escalera(v, a) ^ restringido(v, a, k) ^ v[a + 1] - v[a] <= 1 

	escalera(v, a): ret1 = P.t. b : 0 <= b < a - 1 : v[b] <= v[b+1]

	frecuencia(v, a, d): ret2 = #j : 0 <= j <= a : v[j] == d

	restringido(v, n, k): ret3 = P.t. c : 0 <= p <= n : frecuencia(v, a, v[p]) <= k

	}
* 
* { Invariante: 0 <= i < n ^ 1 <= acum < n
				acum = #j : 0 <= j < i : v[j] == v[i-1]}
* 
* { Cota:  n - i + 1}
* { Complejidad: O(n) lineal, donde n es el numero de elementos del vector }
* 
*/

bool escalera(const vector<int>& v, int k) {

	int i = 0, acum = 1;

	while (i < v.size() - 1 && acum <= k && (v[i + 1] == v[i] || v[i + 1] == v[i] + 1)) {

		if (v[i] == v[i + 1]) { // si los elementos son iguales
			acum++;
		}
		else { // si los elementos se diferencian en 1 y v[i+1] > v[i]
			acum = 1;
		}
		i++;
	}

	return i + 1 == v.size() && acum <= k;
}

void casoDePrueba() {
	// Resuelve un caso de prueba

	int k, n;
	cin >> k >> n;

	vector<int> v(n);
	for (int i = 0; i < n; i++) {
		cin >> v[i];
	}

	cout << (escalera(v, k) ? "SI\n" : "NO\n");
}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;
}