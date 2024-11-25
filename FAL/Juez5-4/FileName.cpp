#include <iostream>
#include <vector>

using namespace std;

struct tSol{
	int primerEscalon;
	int ultimoEscalon;
	int maxEscalon;
};

tSol longitud(const vector<int>& v, int ini, int fin) {

	if (ini == fin) {
		return { 1, 1, 1 };
	}
	else {

		int m = (ini + fin) / 2;

		auto izq = longitud(v, ini, m);
		auto dcha = longitud(v, m + 1, fin);

		int max_centro = 0;

		if (v[m] == v[m + 1]) { // Mismo escalón
			max_centro = izq.ultimoEscalon + dcha.primerEscalon;
		}

		int primer = (v[ini] == v[m + 1]) ? izq.primerEscalon + dcha.primerEscalon : izq.primerEscalon;
		int ultimo = (v[m] == v[fin]) ? izq.ultimoEscalon + dcha.ultimoEscalon : dcha.ultimoEscalon;

		int maximo = max( max(izq.maxEscalon, dcha.maxEscalon) , max_centro);

		return { primer, ultimo, maximo };
	}
}

bool casoDePrueba() {

	int n;
	cin >> n;

	if (n == 0) // Fin de la entrada
		return false;

	vector<int> v(n);
	for (int i = 0; i < n; i++)
		cin >> v[i];

	cout << longitud(v, 0, n - 1).maxEscalon << "\n";

	return true;

}

int main() {

	while (casoDePrueba());

	return 0;
}