#include <iostream>
#include <vector>

using namespace std;

// numero de colores
const int M = 3;

void escribirSol(vector<int>& v) {
	for (int i = 0; i < v.size(); i++) {
		if (v[i] == 0) {
			cout << "azul ";
		}
		else if (v[i] == 1) {
			cout << "rojo ";
		}
		else if (v[i] == 2) {
			cout << "verde ";
		}
	}
	cout << '\n';
}

bool esValida(vector<int>& sol, int k) {
	if (!(sol[k] == 2 && sol[k - 1] == 2)) return true;
	else return false;
}

void va(int n, int k, vector<int>& sol) {

	for (int i = 0; i < 3; i++) {

		sol[k] = i;

		if (esValida(sol, k)) { // no es verde consecutiva

			if (k == n - 1) { // ha llegado al final
				escribirSol(sol);
			}
			else {
				va(n, k + 1, sol);
			}
		}
	}
}
bool casoDePrueba() {

	int n;
	cin >> n;

	if (n == 0) // Fin de la entrada
		return false;

	vector<int> sol(n);
	sol[0] = 1;

	if (n == 1) cout << "rojo\n";
	else va(n, 1, sol);


	cout << "\n";

	return true;

}

int main() {

	while (casoDePrueba());

	return 0;
}