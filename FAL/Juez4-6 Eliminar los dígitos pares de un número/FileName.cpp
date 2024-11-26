#include <iostream>

using namespace std;

long long final(long long n, long long sol = 0, long long uds = 1) {

	if (n < 10) {

		if (n % 2 != 0) sol = sol + (n * uds);
		return sol;
	}
	else {
		if (n % 2 != 0) {

			sol = sol + ((n%10)* uds);
			uds *= 10;

		}
		return final(n / 10, sol, uds);
	}
}

long long nofinal(long long n) {

	if (n < 10) {

		return (n % 2 == 0) ? 0 : n;
	}
	else {
		long long ret = nofinal(n / 10);
		return (n % 10) % 2 == 0 ? ret : (ret * 10) + n % 10;
	}
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

	while (casoDePrueba());

	return 0;
}