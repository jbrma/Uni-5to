#include <iostream>
#include <vector>

using namespace std;

struct tGrupo {
	vector<int> componentes; // componentes del grupo
	int actividad; // actividad total del grupo
};

struct tSol {
	int maxAct; // maxima actividad
	int numG; // numero de grupos
};

bool seSiguenTodos(const vector<vector<int>>& seguimiento, const tGrupo& g) {

	for (int i = 0; i < g.componentes.size(); ++i) {
		for (int j = 0; j < g.componentes.size(); ++j) {

			int a = g.componentes[i];
			int b = g.componentes[j];

			if (i != j && !seguimiento[a][b]) return false;
		}
	}
	return true;
}

void va(int n, int min, int k, const vector<vector<int>> &seguimiento, 
	const vector<int> &actividad, vector<bool> &asign, tGrupo &g, tSol &sol) {

	if (g.componentes.size() >= min && seSiguenTodos(seguimiento, g)) {
		if (g.actividad > sol.maxAct) {
			sol.maxAct = g.actividad;
			sol.numG = 1;
		}
		else if (g.actividad == sol.maxAct) {
			sol.numG++;
		}
	}

	for (int i = k; i < n; i++) {

		if (!asign[i]) {

			asign[i] = true;
			g.componentes.push_back(i);
			g.actividad += actividad[i];

			va(n, min, k + 1, seguimiento, actividad, asign, g, sol);

			g.componentes.pop_back();
			g.actividad -= actividad[i];
			asign[i] = false;		
		}
	}
}


bool casoDePrueba() {

	tSol s;
	int n, k;
	cin >> n;

	if (n == -1) // Fin de la entrada
		return false;

	cin >> k;

	vector<vector<int>> seguimiento(n, vector<int>(n));

	for (int i = 0; i < n; i++) {
		for (int j = 0; j < n; j++) {
			cin >> seguimiento[i][j];
		}
	}

	vector<int> actividad(n);
	for (int i = 0; i < n; i++) {
		cin >> actividad[i];
	}

	s.maxAct = 0;
	s.numG = 0;

	tGrupo g;
	g.actividad = 0;

	vector<bool> asign(n, false);

	va(n, k, 0, seguimiento, actividad, asign, g, s);

	if (s.numG == 0) {
		cout << "NO HAY GRUPOS\n";
	}
	else cout << s.numG << " " << s.maxAct << "\n";

	return true;
}

int main() {

	while (casoDePrueba());

	return 0;
}