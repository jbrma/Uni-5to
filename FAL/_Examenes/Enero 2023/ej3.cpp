#include <iostream>
#include <vector>
#include <climits>

using namespace std;

struct Sol {
	vector<int> piratas;
	int minDifAct;
	int minDifMax;
	int numSol;
	pair<int, int> valorAct;
};

void va(int n, int m, int k, const vector<int>& valores, vector<bool> &marcas, Sol &sol) {

	if (k == n && k >= m * 2) {
		if (sol.minDifAct < sol.minDifMax) {
			sol.minDifMax = sol.minDifAct;
			sol.numSol = 1;
		}
		else if (sol.minDifAct == sol.minDifMax) {
			sol.numSol++;
		}
		return;
	}

	for (int i = 0; i < 2; i++) {

		sol.piratas[k] = i;

		if (!marcas[i]) { // se ha añadido al menos una moneda para cada pirata

			marcas[i] = true;
			if (i == 0)sol.valorAct.first += sol.piratas[i];
			else sol.valorAct.second += valores[i];

			sol.minDifAct = abs(sol.valorAct.first - sol.valorAct.second);
			
			va(n, m, k + 1, valores, marcas, sol);

			if (i == 0)sol.valorAct.first -= valores[sol.piratas[i];
			else sol.valorAct.second +- valores[i];
			marcas[i] = false;
		}
	}

}

bool casoDePrueba() {
	Sol sol;
	int n, m;
	cin >> n;

	if (n == -1) // Fin de la entrada
		return false;
	else {
		cin >> m;

		vector<int> valores(n);
		for (int i = 0; i < n; i++) {
			cin >> valores[i];
		}

		sol.piratas.resize(n, -1);
		sol.minDifAct = 0;
		sol.minDifMax = INT_MAX;
		sol.numSol = 0;
		sol.valorAct = { 0, 0 };

		vector<bool> marcas(n, false);

		va(n, m, 0, valores, marcas, sol);

		cout << sol.minDifMax << " " << sol.numSol << "\n";

		return true;
	}
}

int main() {

	while (casoDePrueba());

	return 0;
}