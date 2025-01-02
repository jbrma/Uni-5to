#include <iostream>
#include <vector>
#include <algorithm>
#include <climits>

using namespace std;

struct tColores {
	int consumo = 0;
	vector<int> usoColor;
	int maxcolor = 0; // guardamos el num maximo de luces del mismo color utilizado
};

bool tresConsecutivosIguales(const vector<int>& sol, int k) {
	if (k < 2) return false;
	return (sol[k - 2] == sol[k - 1] && sol[k - 1] == sol[k]);
}

void va(int n, int c, int k, int m, const vector<int> &colores, vector<int> &sol, int &cont, tColores &col){

	for (int i = 0; i < c; i++) {

		sol[k] = i;
		col.consumo += colores[i]; // se acumula el consumo total
		col.usoColor[i]++; // se acumula las veces que se ha usado ese color

		int aux = col.maxcolor;
		col.maxcolor = max(col.maxcolor, col.usoColor[i]);

		if ((col.consumo <= m) // el consumo que llevamos no es más del total
			&& ((col.maxcolor - 1) <= (k + 1 - col.maxcolor))) { // la suma actual de luces de un color no supera la suma del resto)
			
			if (!tresConsecutivosIguales(sol, k)) {

				if (k == n - 1) {
					cont++;
				}
				else {
					va(n, c, k + 1, m, colores, sol, cont, col);
				}
				
			}
		}
	
		col.consumo -= colores[i];
		col.usoColor[i]--;
		col.maxcolor = aux;
	}
}

bool casoDePrueba() {

	tColores col;
	int n, c, m; // numero luces, numero colores, max consumo

	cin >> n;

	if (n == 0) // Fin de la entrada
		return false;

	cin >> c >> m;

	vector<int> colores(c);
	for (int i = 0; i < c; i++) cin >> colores[i];

	vector<int> sol(n, -1);
	int cont = 0;

	col.consumo = 0;
	col.usoColor.resize(c, 0);
	col.maxcolor = 0;
	va(n, c, 0, m, colores, sol, cont, col);

	cout << cont << "\n";

	return true;

}

int main() {

	while (casoDePrueba());

	return 0;
}