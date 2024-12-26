#include <iostream>
#include <vector>

using namespace std;

/* ESPECIFICACIÓN;
*
* { Pre: 0 <= n <= longitud(a) ^ 0 <= m <= longitud(b) }
* { Post: ret = P.t. i : 0 <= i <= n + m : v[i] < v[i+1]}
* { Invariante: 0 <= i <= n ^ 
				0 <= j <= m ^
				sol = P.t. i : 0 <= i <= n + m : v[i] < v[i+1]}
* { Cota: n - i + m - j}
* { Complejidad: O(n + m), donde n y m son los numeros de los elemetos de los vectores a y b, respectivamente}
*/

vector<int> movilnuevo(vector<int> const& a, vector<int> const& b, int n, int m) {

	vector<int> sol;

	if (n == 0) return b;
	else if (m == 0) return a;
	
	int i = 0, j = 0;

	while (i < n && j < m) { // mezclamos las dos listas

		if (a[i] < b[j]) {
			sol.push_back(a[i]);
			i++;
		}
		else if (a[i] > b[j]) {
			sol.push_back(b[j]);
			j++;
		}
		else {
			sol.push_back(a[i]);
			i++;
			j++;
		}
	}
	
	// añadimos los elementos restantes en caso de quedar alguno en las listas
	while (i < n) {
		sol.push_back(a[i]);
		i++;
	}

	while (j < m) {
		sol.push_back(b[j]);
		j++;
	}

	return sol;

}

void casoDePrueba() {

	int n, m;
	cin >> n >> m;
	vector<int> a(n), b(m);

	for (int i = 0; i < n; i++)
		cin >> a[i];

	for (int i = 0; i < m; i++)
		cin >> b[i];

	auto sol = movilnuevo(a, b, n, m);
	for(int i = 0; i < sol.size(); i++)
		cout << sol[i] << " ";
	cout << "\n";
}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;
}