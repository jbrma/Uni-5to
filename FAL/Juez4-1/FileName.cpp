#include <iostream>

using namespace std;

int invertir(int n, int i) {

	if (n == 0)
		return i;
	else {
		int a = i * 10;
		return(invertir(n / 10, a + n % 10));
	}
}

bool casoDePrueba() {
	// Lectura de la entrada
	int n;
	cin >> n;

	if (n == 0) // Fin de la entrada
		return false;

	cout << invertir(n, 0) << "\n";

	return true;
}

int main() {

	while (casoDePrueba());

	return 0;
}