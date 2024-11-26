#include <iostream>
#include <vector>

using namespace std;

int bongo(const vector<int>& v, int num, int ini, int fin) {

	if (ini == fin) {

		if (v[ini] == ini + num) return v[ini];
		else return -1;
	}
	else {

		int m = (ini + fin) / 2;

		int izq = bongo(v, num, ini, m);
		int dcha = bongo(v, num, m+1, fin);

		return max(izq, dcha);

	}
}

bool casoDePrueba() {

	int n;
	cin >> n;

	if (!cin) // Fin de la entrada
		return false;

	int num;
	cin >> num;

	vector<int> v(n);
	for (int i = 0; i < n; i++)
		cin >> v[i];

	int sol = bongo(v, num, 0, n - 1);

	if (sol != -1) cout << sol << "\n";
	else cout << "NO\n";


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