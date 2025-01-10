#include <iostream>
#include <vector>
#include <climits>

using namespace std;

struct Sol {
	vector<int> vsol;
	int min;
	int suma;
	int numSol;
};

void va(int n, int k, const vector<int> &v, int u, Sol &sol) {

	if (k > 0 && sol.suma <= u) {
		sol.numSol++;
		if (sol.suma == u) return;
	}
	else if (sol.suma > u) return;

	for (int i = 0; i < n; i++) {

		sol.vsol.push_back(v[i]);

		if (k == 0) sol.min = v[i];

		sol.suma += v[i];


		if (k == 0) {
			va(n, k + 1, v, u, sol);
		}
		else {
			if (v[i] != sol.min) {
				int miAct = sol.min;
				sol.min = min(sol.min, v[i]);
				va(n, k + 1, v, u, sol);
				sol.min = miAct;
			}
		}

		
		sol.suma -= v[i];
		sol.vsol.pop_back();
	}
}

bool casoDePrueba() {
	int n, u;
	cin >> n;

	if (n == -1) // Fin de la entrada
		return false;
	else {
		
		vector<int> v(n);
		for (int i = 0; i < n; i++) {
			cin >> v[i];
		}

		cin >> u;
		Sol sol;
		sol.min = INT_MAX;
		sol.suma = 0;
		sol.numSol = 0;

		va(n, 0, v, u, sol);

		cout << sol.numSol << "\n";

		return true;
	}
}

int main() {

	while (casoDePrueba());

	return 0;
}