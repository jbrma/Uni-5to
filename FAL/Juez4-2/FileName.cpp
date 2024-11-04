#include <iostream>

using namespace std;

int compruebaDigito(int d) {
	return d % 2 == 0 ? d + 1 : d - 1;
}

int juego(int n) {
	int sol = 0;
	if (n/10 == 0) {
		sol = compruebaDigito(n%10);
	}
	else {
		
		sol = juego(n / 10) * 10;
		sol += compruebaDigito(n % 10);
	}

	return sol;
}

bool casoDePrueba() {
	// Lectura de la entrada
	int n;
	cin >> n;

	cout << juego(n) << "\n";

	return true;
}

int main() {

	int numcasos;
	cin >> numcasos;

	while (numcasos--)
		casoDePrueba();

	return 0;
}