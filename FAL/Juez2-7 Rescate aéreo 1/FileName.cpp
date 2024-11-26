#include <iostream>
#include <vector>

using namespace std;

pair<int, int> rescate(vector<int> const& v, int h) {

	int i = 0, j = 0;
	pair<int, int> par = { 0, -1 };

	while (j < v.size()) {

		if (v[i] > h && v[j] > h) {
			if ((par.second - par.first) < (j - i)) {
				par = { i, j };
			}
			j++;
		}
		else {
			j++;
			i = j;
		}
	}
	return par;
}


bool casoDePrueba() {
	// Lectura de la entrada (primer valor en el caso de que sea más de uno)
	// cin >> 

	int n, altura;
	cin >> n >> altura;

	if (n == 0) // Fin de la entrada
		return false;

	vector<int> v(n);

	for (int i = 0; i < n; i++)
		cin >> v[i];

	auto sol = rescate(v, altura);
	cout << sol.first << " " << sol.second << "\n";

	return true;
}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;
}