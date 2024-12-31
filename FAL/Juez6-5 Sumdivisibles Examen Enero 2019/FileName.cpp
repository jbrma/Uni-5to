#include <iostream>
#include <vector>
#include <cmath>

using namespace std;


void va(long long d, int k, int suma, int digitos, int& contador) {

	if (digitos == k) { // los digitos actuales son los mismos que pide el problema (restriccion)
		contador++;
		return;
	}

	for (int i = 0; i <= 9; i++) {

		int num = d * 10 + i;
		int suma2 = suma + i;
		int dig = digitos + 1;

		if (suma2 % dig == 0) { // es sumdivisible
			va(num, k, suma2, dig, contador);
		}
	}

}
bool casoDePrueba() {

	int d, k;
	cin >> d;

	if (d == 0) // Fin de la entrada
		return false;

	cin >> k;

	int cont = 0;
	va(d, k, d, 1, cont);

	cout << cont << "\n";

	return true;

}

int main() {

	while (casoDePrueba());

	return 0;
}