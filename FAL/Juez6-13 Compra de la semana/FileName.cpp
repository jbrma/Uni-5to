#include <iostream>
#include <vector>
#include <climits>

using namespace std;


void va(int n, int m, int k, const vector<vector<int>> &precios, vector<int> &comprados, 
	int costeAct, int &costeMin, vector<int> &sol, const vector<int> &mejoresPrecios) {

	if (costeAct > costeMin) return;

	if (k == n) {
		costeMin = min(costeAct, costeMin);
		return;
	}

	for (int i = 0; i < m; i++) {

		if (comprados[i] < 3 && (costeAct + precios[i][k] + mejoresPrecios[k + 1]) < costeMin) {

			sol[k] = i;
			comprados[i]++;

			va(n, m, k + 1, precios, comprados, costeAct + precios[i][k], costeMin, sol, mejoresPrecios);

			comprados[i]--;
		}
	}
}

void casoDePrueba() {
	// Resuelve un caso de prueba

	int m, n;
	cin >> m >> n;

	vector<vector<int>> matriz(m, vector<int>(n));

	for (int i = 0; i < m; i++) {
		for (int j = 0; j < n; j++) {
			cin >> matriz[i][j];
		}
	}

	vector<int> sol(n);
	vector<int> comprados(m);

	int ca = 0;
	int cm = INT_MAX;

	vector<int> mejoresPrecios(n+1); // dejamos hueco para uno mas

	for (int i = 0; i < n; i++) {
		mejoresPrecios[i] = INT_MAX;
		for (int j = 0; j < m; j++) {
			mejoresPrecios[i] = min(mejoresPrecios[i], matriz[j][i]);
		}
	}

	mejoresPrecios[n] = 0;

	for (int i = n - 2; i >= 0; i--) {
		mejoresPrecios[i] += mejoresPrecios[i + 1];
	}

	va(n, m, 0, matriz, comprados, ca, cm, sol, mejoresPrecios);

	cout << cm << "\n";
}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;
}