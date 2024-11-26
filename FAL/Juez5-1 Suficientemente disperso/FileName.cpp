#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

bool disperso(const vector<int>& v, int k, int ini, int fin) {

	if (ini == fin) return true;
	else if (abs(v[ini] - v[fin]) < k) return false;
	else {

		int m = (ini + fin) / 2;

		bool izq = disperso(v, k, ini, m);
		bool dcha = disperso(v, k, m+1, fin);

		return izq && dcha;
	}
	
}

bool casoDePrueba() {
 
	int n, k;
	cin >> n >> k;

	if (!cin) // Fin de la entrada
		return false;

	vector<int> v(n);
	for (int i = 0; i < n; i++)
		cin >> v[i];

	cout << (disperso(v, k, 0, n - 1) ? "SI\n" : "NO\n");

	return true;
	
}

int main() {

	while (casoDePrueba());

	return 0;
}