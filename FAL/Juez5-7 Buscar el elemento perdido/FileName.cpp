#include <iostream>
#include <vector>

using namespace std;

int perdido(const vector<int>& a, const vector<int>& b, int ini, int fin) {

	if (ini == fin) {

		return a[ini];
	}
	if (ini + 1 == fin) {

		if (a[ini] != b[ini]) return a[ini];
		else return a[fin];
	}
	else {

		int m = (ini + fin) / 2;

		int sol = 0;

		if(a[m] != b[m])
			sol = perdido(a, b, ini, m);
		else
			sol = perdido(a, b, m + 1, fin);


		return sol;
	}
}

bool casoDePrueba() {

	int n;
	cin >> n;

	if (!cin) // Fin de la entrada
		return false;

	vector<int> a(n), b(n-1);

	for (int i = 0; i < n; i++)
		cin >> a[i];

	for (int i = 0; i < n - 1; i++)
		cin >> b[i];

	cout << perdido(a, b, 0, n - 1) << "\n";

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