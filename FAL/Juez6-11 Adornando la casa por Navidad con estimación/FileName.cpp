#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

struct tAdorno {
	int coste;
	int superficie;

	bool operator>(tAdorno const& rhs) const { // mayor densidad
		return superficie * rhs.coste > rhs.superficie * coste;
	}
};

struct tSol {
	int costeAct;
	int superficieAct;
};


int estimacion(int n, const vector<tAdorno>& adornos, tSol &s, int k, int p) {

	int costeRestante = p - s.costeAct; // coste que queda para rellenar el presupuesto
	int superficieEstimada = s.superficieAct; // superficie que podemos cubrir como mínimo
	int i = k;

	while (i < n && costeRestante > 0) { // mientras queden objetos por estimar y coste por rellenar

		if (adornos[i].coste <= costeRestante) { // si el coste del objeto actual cabe
			superficieEstimada += adornos[i].superficie; 
			costeRestante -= adornos[i].coste;
		}
		else {
			superficieEstimada += (adornos[i].superficie * costeRestante) / adornos[i].coste; // fracción del objeto
			costeRestante = 0;
		}

		++i;
	}
	return superficieEstimada;

}

void va(int n, int p, int k, const vector<tAdorno>& adornos, vector<int>& sol, tSol& s, vector<bool>& marcas, int& superficie) {

	if (s.costeAct > p) return;

	if (k == n) {
		superficie = max(superficie, s.superficieAct);
		return;
	}

	va(n, p, k + 1, adornos, sol, s, marcas, superficie); // sin incluir adorno actual

	// incluir adorno si no ha sido usado

	s.costeAct += adornos[k].coste;
	s.superficieAct += adornos[k].superficie;

	// poda con estimación: Si la mejor superficie posible (estimada) es menor que la superficie actual mejor conocida, no explorar esta rama
	if (estimacion(n, adornos, s, k + 1, p) <= superficie) {
		s.costeAct -= adornos[k].coste;
		s.superficieAct -= adornos[k].superficie;
		return;
	}

	va(n, p, k + 1, adornos, sol, s, marcas, superficie);


	s.costeAct -= adornos[k].coste;
	s.superficieAct -= adornos[k].superficie;



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

	sort(v.begin(), v.end(), greater<tAdorno>());

	va(n, p, 0, v, sol, s, marcas, superficie);

	cout << superficie << "\n";

	return true;

}

int main() {

	while (casoDePrueba());

	return 0;
}