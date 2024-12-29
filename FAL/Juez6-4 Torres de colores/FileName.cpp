#include <iostream>
#include <vector>

using namespace std;

// colores
const int M = 3;

struct tTorre{

	int h;
	int a, r, v;
};

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

bool esValida(vector<int>& sol, int k, vector<int>& numPiezas) {

	if (sol[k] == 2) {
		if (sol[k - 1] == 2) { // no es verde consecutiva
			return false;
		}
		if (numPiezas[2] > numPiezas[0]) { // verdes < azules
			return false;
		}
	}
	
	return true;
}

bool haySuficientesPiezas(tTorre torre, vector<int>& numPiezas) {

	if (numPiezas[0] <= torre.a && numPiezas[1] <= torre.r && numPiezas[2] <= torre.v) return true;
	else return false;
}

void va(tTorre torre, int k, vector<int>& sol, vector<int>& numPiezas, int& soluciones) {

	for (int i = 0; i < M; i++) {

		sol[k] = i;
		numPiezas[i]++;

		if (esValida(sol, k, numPiezas) && haySuficientesPiezas(torre, numPiezas)) { 

			if (k == torre.h - 1) { // ha llegado al final
				if (numPiezas[1] > numPiezas[0] + numPiezas[2]) { // el num de piezas rojas debe ser mayor a la suma de azules y verdes
				escribirSol(sol);
				soluciones++;
				}
			}
			else {
				va(torre, k + 1, sol, numPiezas, soluciones);
			}
		}

		numPiezas[i]--;
	}
}
bool casoDePrueba() {

	tTorre torre;
	cin >> torre.h >> torre.a >> torre.r >> torre.v;

	if (torre.h == 0 && torre.a == 0 && torre.r == 0 && torre.v == 0) // Fin de la entrada
		return false;

	vector<int> sol(torre.h);
	sol[0] = 1;

	vector<int> numPiezas(M, 0);
	numPiezas[1] = 1;

	int soluciones = 0;
	va(torre, 1, sol, numPiezas, soluciones);

	if (soluciones == 0) cout << "SIN SOLUCION\n";

	cout << "\n";

	return true;

}

int main() {

	while (casoDePrueba());

	return 0;
}