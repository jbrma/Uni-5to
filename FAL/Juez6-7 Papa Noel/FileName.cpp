#include <iostream>
#include <vector>

using namespace std;


void escribirsol(vector<pair<string, int>> const& sol) {

	for (int i = 0; i < sol.size(); i++) {
		cout << sol[i].second << " ";
	}
	cout << "\n";
}

bool esValida(vector<pair<string, int>> const& sol, int k) {
	return sol[k - 1].first != sol[k].first && sol[k - 1].second < sol[k].second;
}

bool haySufyCumplenSatisf(vector<pair<string, int>> const& sol, int k, int s, vector<int> const& usados, vector<int> const& disponibles, vector<vector<int>> satisf) {

	for (int i = 0; i < usados.size(); i++) {
		if (usados[i] > disponibles[i]) return false;
	}

	int a = satisf[k/2][sol[k - 1].second];
	int b = satisf[k/2][sol[k].second];

	if ((a + b) < s) return false;

	return true;
}

void va(vector<string> const& tipos, int n, int k, vector<pair<string, int>>& sol, int& cont, 
	vector<int> & usados, vector<int> const& disponibles, int s, vector<vector<int>> const& satisf) {

	for (int i = 0; i < tipos.size(); i++) {

		sol[k].first = tipos[i];
		sol[k].second = i;
		usados[i]++;

		if (k % 2 == 1) { // cuando ya se ha completado un par 

			if (esValida(sol, k) && haySufyCumplenSatisf(sol, k, s, usados, disponibles, satisf)) { // cumple las restricciones

				if (k == n * 2 - 1) { // se han guardado ya todos los pares
					escribirsol(sol);
					cont++;
				}
				else {
					va(tipos, n, k + 1, sol, cont, usados, disponibles, s, satisf);
				}
			}
		}
		else {
			va(tipos, n, k + 1, sol, cont, usados, disponibles, s, satisf);
		}

		usados[i]--;
	}

}

bool casoDePrueba() {

	int m, n, s;
	cin >> m;

	if (!cin) // Fin de la entrada
		return false;

	cin >> n >> s;

	vector<int> disponibles(m);
	for (int i = 0; i < m; i++) {
		cin >> disponibles[i];
	}

	vector<string> tipos(m);
	for (int i = 0; i < m; i++) {
		cin >> tipos[i];
	}

	vector<vector<int>> satisf(n, vector<int>(m));

	for (int i = 0; i < n; i++) {
		for (int j = 0; j < m; j++) {
			cin >> satisf[i][j];
		}
	}

	vector<int> usados(m, 0);

	vector<pair<string, int>> sol(n * 2);

	int cont = 0;
	va(tipos, n, 0, sol, cont, usados, disponibles, s, satisf);

	if (cont == 0) {
		cout << "SIN SOLUCION\n";
	}

	cout << "\n";
	return true;

}

int main() {

	while (casoDePrueba());

	return 0;
}