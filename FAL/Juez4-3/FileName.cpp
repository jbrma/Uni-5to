#include <iostream>

using namespace std;

/* COSTE
*
*	T1(n) = c0			n = 0
*	T1(n) =	c1 * T(n-1)	n > 0
*
*
*	T2(n) = c0			n = 0
*	T2(n) = c1 * T(n-1) n > 0
*
*	Despliegue
*
*	Postulado
*
*	T1 n - k = 1 -> n - 1 = k
*
*		kc1 + T1(n-k) = (n - 1)c1 + ... = O(n)
*
*	T2 ... O(n)
*/

int complementario(int n) {

	if (n < 10) {
		return 9 - n;
	}
	else {

		int a = complementario(n / 10);
		int b = 9 - n % 10;
		return a * 10 + b;
	}
}

int inverso(int n, int i) {

	if (n/10 == 0 && i == 0) {
		return 9 - n;
	}

	if (n == 0) return i;
	else return inverso(n / 10, i * 10 + (9 - n % 10));
}

void casoDePrueba() {
	
	int n;
	cin >> n;

	cout << complementario(n) << " " << inverso(n, 0) << "\n";
}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;
}