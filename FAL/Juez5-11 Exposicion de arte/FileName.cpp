#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

int expoArte(const vector<int>& pesos, int pesoAct, int i,
	int viajes, int viajesAct, int ini, int fin) {

	if (ini == fin) {
		return ini;
	}

	int m = (ini + fin) / 2;

	if (i == pesos.size()) { // ha llegado al final, donde podemos actualizar ini y fin

		if (viajesAct < viajes) {
			return expoArte(pesos, 0, 0, viajes, 0, ini, m);
		}
		else {
			return expoArte(pesos, 0, 0, viajes, 0, m + 1, fin);
		}
	}

	if (pesoAct + pesos[i] <= m) { // continuamos acumulando en el viaje actual
		return expoArte(pesos, pesoAct + pesos[i], i + 1, viajes, viajesAct, ini, fin);
	}
	else { // nuevo viaje
		return expoArte(pesos, pesos[i], i + 1, viajes, viajesAct + 1, ini, fin);
	}
	
}

bool casoDePrueba() {
	int n, m;
	cin >> n >> m;

	if (n == 0 && m == 0) // Fin de la entrada
		return false;

	vector<int> pesos(n);
	for (int i = 0; i < n; i++) {
		cin >> pesos[i];
	}

	int suma = 0;
	int maxim = 0;
	for (int i = 0; i < n; i++) {
		maxim = max(maxim, pesos[i]);
		suma += pesos[i];
	}

	cout << expoArte(pesos, 0, 0, m, 0, maxim, suma) << "\n";

	return true;
	
}

int main() {

	while (casoDePrueba());

	return 0;
}