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

void va(vector<string> const& tipos, int n, int k, vector<pair<string, int>> &sol, int& cont) {

	for (int i = 0; i < tipos.size(); i++) {

		sol[k].first = tipos[i];
		sol[k].second = i;

		if (k % 2 == 1) { // cuando ya se ha completado un par 
			
			if (esValida(sol, k)) { // cumple las restricciones

				if (k == n * 2 - 1) { // se han guardado ya todos los pares
					escribirsol(sol);
					cont++;
				}
				else {
					va(tipos, n, k + 1, sol, cont);
				}
			}
		}
		else {
			va(tipos, n, k + 1, sol, cont);
		}

	}

}

bool casoDePrueba() {

	int m, n;
	cin >> m;

	if (!cin) // Fin de la entrada
		return false;

	cin >> n;

	vector<string> tipos(m);
	for (int i = 0; i < m; i++) {
		cin >> tipos[i];
	}

	vector<pair<string, int>> sol(n * 2, {" ", -1});

	int cont = 0;
	va(tipos, n, 0, sol, cont);

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