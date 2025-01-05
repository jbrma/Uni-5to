#include <iostream>
#include <vector>

using namespace std;

struct tAdorno {
	int coste;
	int superficie;
};

struct tSol {
	int costeAct;
	int superficieAct;
};

void va(int n, int p, int k, const vector<tAdorno>& adornos, vector<int> &sol, tSol &s, vector<bool> &marcas, int &superficie) {

	if (s.costeAct > p) return;

	if (k == n) {
		superficie = max(superficie, s.superficieAct);
		return;
	}

	va(n, p, k + 1, adornos, sol, s, marcas, superficie); // sin incluir adorno actual


	if (!marcas[k]) { // incluir adorno si no ha sido usado
		marcas[k] = true;

		s.costeAct += adornos[k].coste;
		s.superficieAct += adornos[k].superficie;


		va(n, p, k + 1, adornos, sol, s, marcas, superficie);


		s.costeAct -= adornos[k].coste;
		s.superficieAct -= adornos[k].superficie;
		marcas[k] = false;
	}
	

}

bool casoDePrueba() {

	int n, p;
	cin >> n;

	if (!cin) // Fin de la entrada
		return false;

	cin >> p;

	vector<tAdorno> v(n);
	for (int i = 0; i < n; i++) {
		cin >> v[i].coste >> v[i].superficie;
	}
	
	vector<int> sol(n, -1);
	int superficie = 0;
	tSol s;
	s.costeAct = 0;
	s.superficieAct = 0;
	vector<bool> marcas(n);

	va(n, p, 0, v, sol, s, marcas, superficie);

	cout << superficie << "\n";

	return true;
	
}

int main() {

	while (casoDePrueba());

	return 0;
}