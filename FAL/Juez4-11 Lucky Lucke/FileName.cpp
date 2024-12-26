#include <iostream>
#include <vector>

using namespace std;

int buscarIz(const vector<int> &v, int i, int h) {

	if (v[i] != h && i < v.size() - 1) return buscarIz(v, i + 1, h);
	else if (v[i] == h) return i;
	else return -1;
}

int buscarDr(const vector<int>& v, int n, int h) {

	if (v[n] != h && n > 0) return buscarDr(v, n - 1, h);
	else if (v[n] == h) return n;
	else return -1;
}

void resuelveCaso(const vector<int>& v, int n, int h) {

	int izq = buscarIz(v, 0, h);
	int der = buscarDr(v, n - 1, h);

	if (izq == -1 && der == -1) cout << "NO EXISTE\n";
	else if (izq == der) cout << izq << "\n";
	else cout << izq << " " << der << "\n";

}

bool casoDePrueba() {
	// Lectura de la entrada (primer valor en el caso de que sea más de uno)
	// cin >> 

	int n, h;
	cin >> n >> h;

	if (!cin)
		return false;

	vector<int> v(n);
	for (int i = 0; i < n; i++)
		cin >> v[i];

	resuelveCaso(v, n, h);

	return true;

}

int main() {

	while (casoDePrueba());

	return 0;
}