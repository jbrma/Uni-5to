#include <iostream>
#include <vector>

using namespace std;

int concava(const vector<int>& v, int ini, int fin) {

	if (ini == fin) {
		return v[ini];
	}
	else {

		int m = (ini + fin) / 2;

		int izq = concava(v, ini, m);
		int dcha = concava(v, m+1, fin);

		return min(izq, dcha);
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