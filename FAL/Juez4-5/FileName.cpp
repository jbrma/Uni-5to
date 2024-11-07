#include <iostream>

using namespace std;

bool interesante(int n, int& sumaIz, int sumaDer) {

	if (n < 10) {
		sumaIz += n;
		return n != 0 && sumaDer % n == 0;
	}
	else {
		sumaDer += n % 10;
		bool sol = interesante(n/10, sumaIz, sumaDer);
		sumaIz += n % 10;
		return n % 10 != 0 && sumaIz % (n % 10) == 0 && sumaDer % (n % 10) == 0 && sol;
	}

}

bool casoDePrueba() {

	int n;
	cin >> n;

	int a = 0;
	cout << (interesante(n, a, 0) ? "SI\n" : "NO\n");

	return true;

}

int main() {

	int numcasos;
	cin >> numcasos;

	while (numcasos--) {
		casoDePrueba();
	}

	return 0;
}