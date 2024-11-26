#include <iostream>

using namespace std;

long long final(long long n, long long sol = 0, long long uds = 10) {

	if (n < 10) {
		long long sum = n * uds / 10 + n * uds;
		sum *= uds / 10;

		return sol + sum;
	}
	else {
		long long sum = n % 10 * uds / 10 + n % 10 * uds;
		sum *= uds / 10;
		sol += sum;

		return final(n / 10, sol, uds*10) ;
	}
}


long long nofinal(long long n) {

	if (n < 10) {
		return n*10 + n;
	}
	else {

		long long sum = nofinal(n / 10);
		sum *= 100;
		int a = n % 10 * 10;
		int b = n % 10;
		return sum + a + b;
	}

	return 0;
}

bool casoDePrueba() {

	long long n;
	cin >> n;

	if (!cin)
		return false;

	cout << final(n) << " " << nofinal(n) << "\n";

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