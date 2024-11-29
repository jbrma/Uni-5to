#include <iostream>
#include <vector>

using namespace std;

int quebrada(const vector<int>& v, int ini, int fin) {

	if (ini == fin) {
		return 1;
	}
	else if(fin == -1){
		return 0;
	}
	else {

		int m = (ini + fin) / 2;

		auto izq = quebrada(v, ini, m);
		auto dcha = quebrada(v, m + 1, fin);

		int longitudMax = (v[m] == v[m + 1]) ? izq + dcha : 0;

		int sol = max(max(izq, dcha), longitudMax);
		return sol;
	}
}

bool casoDePrueba() {

	int n;
	cin >> n;

	if (n == -1) // Fin de la entrada
		return false;

	vector<int> v(n);
	for (int i = 0; i < n; i++)
		cin >> v[i];

	cout << quebrada(v, 0, n - 1) << "\n";

	return true;

}

int main() {

	while (casoDePrueba());

	return 0;
}