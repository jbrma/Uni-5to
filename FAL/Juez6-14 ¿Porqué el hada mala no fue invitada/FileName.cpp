#include <iostream>
#include <vector>
#include <climits>
#include <cmath>

using namespace std;

bool esValida(int n, int m, int hada, const vector<int>& sol) {
	int numiguales = 0;
	bool hadaB = false;

	for (int i = 0; i < sol.size(); i++) {
		if (sol[i] == i) numiguales++;
		if (sol[i] == hada) hadaB = true;
	}

	if (hadaB && (numiguales <= trunc(m / 3))) {
		return true;
	}

	return false;
}

void va(int n, int m, int hada, int k, const vector<vector<int>>& invitados, vector<bool>& asignados,
	vector<int>& sol, int satisfAct, int& mejorSol, int& cont) {

	for (int i = 0; i < n; i++) {

		sol[k] = i;

		if (invitados[k][i] > 0 && !asignados[i]) {

			asignados[i] = true;
			satisfAct += invitados[k][i];

			if (k == m - 1) {
				if (esValida(n, m, hada, sol)) {
					if (satisfAct > mejorSol) {
						mejorSol = satisfAct;
						cont = 1;
					}
					else if (satisfAct == mejorSol) cont++;
				}
			}
			else va(n, m, hada, k + 1, invitados, asignados, sol, satisfAct, mejorSol, cont);

			asignados[i] = false;
			satisfAct -= invitados[k][i];

		}
	}
}

bool casoDePrueba() {
	// Resuelve un caso de prueba

	int n, m, mala;
	cin >> n;

	if (n == 0) return false;

	cin >> m >> mala;

	vector<vector<int>> matriz(m, vector<int>(n));

	for (int i = 0; i < m; i++) {
		for (int j = 0; j < n; j++) {
			cin >> matriz[i][j];
		}
	}


	vector<bool> asignados(n, false);
	vector<int> mejorSatisf(n + 1); // dejamos hueco para uno mas

	for (int i = 0; i < n; i++) {
		mejorSatisf[i] = INT_MIN;
		for (int j = 0; j < m; j++) {
			mejorSatisf[i] = max(mejorSatisf[i], matriz[j][i]);
		}
	}

	mejorSatisf[n] = 0;

	for (int i = n - 2; i >= 0; i--) {
		mejorSatisf[i] += mejorSatisf[i + 1];
	}

	int mejorsol = INT_MIN;
	int cont = 0;
	int pnumigual = 0;
	vector<int> sol(m, -1);

	va(n, m, mala, 0, matriz, asignados, sol, 0, mejorsol, cont);

	if (cont == 0) cout << "No\n";
	else cout << mejorsol << " " << cont << "\n";

	return true;
}

int main() {

	while (casoDePrueba());
		

	return 0;
}