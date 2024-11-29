#include <iostream>
#include <vector>

using namespace std;

int concava(const vector<int>& v, int ini, int fin) {

	if (ini == fin) {
		return v[ini];
	}
	else {

		int m = (ini + fin) / 2;

		if (v[m] < v[m + 1]) return concava(v, ini, m);
		else return concava(v, m + 1, fin);

	}
}

bool casoDePrueba() {

	int n;
	cin >> n;

	if (!cin) // Fin de la entrada
		return false;

	vector<int> v(n);
	for (int i = 0; i < n; i++)
		cin >> v[i];

	cout << concava(v, 0, n - 1) << "\n";

	return true;

}

int main() {

	while (casoDePrueba());

	return 0;
}