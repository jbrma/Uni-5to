#include <iostream>
#include <climits>

using namespace std;

/* COMPLEJIDAD
* 
* Recursion por division
* 
* T(n) = c0				si n < 10
* T(n) = c1 + T(n/10)	si n >= 10
* 
* a = 1, b = 10, k = 0	=> a = b^k => O(n^k logn) = O(logn)
* 
*/

void codigo(int n, int &c, bool &pos, int menor, int &mayor) {

	if (n / 10 == 0) {
		c += n * 3 + menor;
		mayor = n;
		pos = true;
	}
	else {

		codigo(n / 10, c, pos, min(menor, n % 10), mayor);

		if (pos) {
			c += n % 10 * 2 + mayor;
			pos = false;
		}
		else {
			c += n % 10 * 3 + menor;
			pos = true;
		}

		mayor = max(mayor, n % 10);

	}
}

void casoDePrueba() {
	
	int n;
	cin >> n;

	int c = 0;
	bool pos = false;// pos: false = impar, true = par
	int mayor = INT_MIN;
	int menor = INT_MAX;

	codigo(n, c, pos, menor, mayor);

	cout << c << "\n";
}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;
}