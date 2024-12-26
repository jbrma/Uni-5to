#include <iostream>

using namespace std;

/* COSTE
*
*	Recursión por división
*
*	T(n) = c0				n < 10
*	T(n) = c1 + T(n/10)		n >= 10
*
*	T1 : a = 1, b = 10, k = 0 : a = b^k  =>  O(n^k logn) = O(logn)
*/

bool sumdivisible(int n, int& suma, int& digitos) {

	if (n < 10) {

		suma = n;
		return true;
	}
	else {

		bool sol = sumdivisible(n/10, suma, digitos);
		suma += n % 10;
		digitos++;

		return sol && suma % digitos == 0;

	}
}



bool casoDePrueba() {

	int n;
	cin >> n;

	if (n == 0)
		return false;

	int aux = 0, aux2 = 1;
	cout << (sumdivisible(n, aux, aux2) ? "SI\n" : "NO\n");

	return true;

}

int main() {

	while (casoDePrueba());
	return 0;
}