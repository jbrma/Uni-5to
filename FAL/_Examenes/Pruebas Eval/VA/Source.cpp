#include <iostream>
#include <vector>
#include <algorithm>
#include <climits>

using namespace std;

struct tSol {
	int castigoAct;
	int recompensaAct;
	int recompensaMax;
};

int va(int n, int m, int c, int k, const vector<vector<int>> &matriz, vector<int> &sol, tSol &s,
		const vector<int> &mejoresTeclasRestantes) {

	int nSol = 0;

	if (k == m) {
		if (abs(s.castigoAct) <= c) {
			nSol++;
			s.recompensaMax = max(s.recompensaMax, s.recompensaAct);
		}
		return nSol;
	}

	for (int i = 0; i < n; i++) {

		sol[k] = i;

		if (k > 0) { // marcar

			int teclaAnt = sol[k - 1];
			matriz[teclaAnt][i] > -1 ? s.recompensaAct += matriz[teclaAnt][i] : s.castigoAct += matriz[teclaAnt][i];
		
		}
		
		if (abs(s.castigoAct) <= c) {
			int posibleRecomp = s.recompensaAct + mejoresTeclasRestantes[k];
			if (posibleRecomp > s.recompensaMax) {
				nSol += va(n, m, c, k + 1, matriz, sol, s, mejoresTeclasRestantes);
			}
		}
			
		if (k > 0) { // desmarcar

			int teclaAnt = sol[k - 1];
			matriz[teclaAnt][i] > -1 ? s.recompensaAct -= matriz[teclaAnt][i] : s.castigoAct -= matriz[teclaAnt][i];

		}

	}

	return nSol;
}

void casoDePrueba() {
	tSol s;
	int n, m, c;
	cin >> n >> m >> c;

	vector<vector<int>> matriz(n, vector<int>(n));
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < n; j++) {
			cin >> matriz[i][j];
		}
	}

	vector<int> sol(m, -1);
	s.castigoAct = 0;
	s.recompensaAct = 0;
	s.recompensaMax = INT_MIN;

	int maxMatriz = INT_MIN;
	for (int i = 0; i < n; i++) {
		for (int j = 0; j < n; j++) {
			maxMatriz = max(maxMatriz, matriz[i][j]);
		}
	}

	vector<int> mejoresTeclasRestantes(m, 0);
	for (int i = m - 1; i >= 0; --i) {
		mejoresTeclasRestantes[i] = (i == m - 1) ? 0 : mejoresTeclasRestantes[i + 1];
		mejoresTeclasRestantes[i] += maxMatriz;
	}

	

	if (va(n, m, c, 0, matriz, sol, s, mejoresTeclasRestantes) != 0) cout << s.recompensaMax << "\n";
	else cout << "NO\n";
}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;
}