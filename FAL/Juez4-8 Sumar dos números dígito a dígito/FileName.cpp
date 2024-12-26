#include <iostream>

using namespace std;

/* COSTE
*	
*	Recursión por división
*	
*	T1(n) = c0				n1 < 10 ^ n2 < 10
*	T1(n) =	c1 + T(n/10)	n1 > 10 ^ n2 > 10
*
*
*	T2(n) = c0				n1 < 10 ^ n2 < 10
*	T2(n) =	c1 + T(n/10)	n1 > 10 ^ n2 > 10
*
*
*	T1 : a = 1, b = 10, k = 0 : a = b^k  =>  O(n^k logn) = O(logn)
*
*	T2 ... O(logn)
*/

int final(int n1, int n2, int sol = 0, int uds = 1) {

	if (n1 < 10 && n2 < 10) {

		return (n1 + n2) % 10 * uds + sol;
	}
	else {
		auto a = (n1 % 10 + n2 % 10) % 10;
		a *= uds;
		sol += a;

		return final(n1 / 10, n2 / 10, sol, uds * 10);

	}
}


int nofinal(int n1, int n2) {

	if (n1 < 10 && n2 < 10) {
		return (n1 + n2) % 10;
	}
	else {

		int sum = nofinal(n1 / 10, n2 / 10);
		sum *= 10;

		return sum + (n1 % 10 + n2 % 10) % 10;
	}
}

bool casoDePrueba() {

	int n1, n2;
	cin >> n1 >> n2;

	if (!cin)
		return false;

	cout << final(n1, n2) << " " << nofinal(n1, n2) << "\n";

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