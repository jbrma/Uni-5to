#include <iostream>
#include <vector>

using namespace std;

/* COSTE
* 
* Es una búsqueda binaria ya que en cada iteración, se va descartando la mitad del segmento
* que estamos mirando. O(logn)
* 
*/

bool infiltrado(const vector<int>& v, const pair<int, int> &ent, int ini, int fin) {

	if (ini == fin) {
		if (v[ini] != ent.first && v[ini] != ent.second) return true; // no es igual a ninguno de los extremos
		else return false;
	}
	else {

		int m = (ini + fin) / 2;

		if (v[m] == ent.first) {
			return infiltrado(v, ent, m + 1, fin);
		}
		else if (v[m] == ent.second) {
			return infiltrado(v, ent, ini, m);
		}
		else return true;
		
	}
}

bool casoDePrueba() {
	int n;
	cin >> n;

	if (n == -1) // Fin de la entrada
		return false;

	vector<int> v(n);
	for (int i = 0; i < n; i++) {
		cin >> v[i];
	}

	pair<int, int> entrada;
	entrada.first = v[0];
	entrada.second = v[n - 1];

	cout << (infiltrado(v, entrada, 0, n - 1) ? "SI\n" : "NO\n");

	return true;
	
}

int main() {

	while (casoDePrueba());

	return 0;
}