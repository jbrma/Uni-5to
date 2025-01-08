#include <iostream>
#include <vector>

using namespace std;

int puntocruz(const vector<char>& v, int ini, int fin) {

	if (ini == fin) {
		return ini;
	}
	else {
		int m = (ini + fin) / 2;

		if (v[m] == '*') return m;
		
		if (v[m] == 'x') {
			return puntocruz(v, m + 1, fin);
		}
		else {
			return puntocruz(v, ini, m);
		}
	}
}

bool casoDePrueba() {

	int n;
	cin >> n;

	if (n == -1) // Fin de la entrada
		return false;

	vector<char> v(n);
	for (int i = 0; i < n; i++) {
		cin >> v[i];
	}
	
	cout << puntocruz(v, 0, n - 1) << "\n";

	return true;
}

int main() {

	while (casoDePrueba());

	return 0;
}