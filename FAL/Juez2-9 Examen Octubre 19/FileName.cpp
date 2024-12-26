#include <iostream>
#include <vector>

using namespace std;

/* ESPECIFICACIÓN;
* 
* { Pre: 0 <= n <= longitud(v) }
* { Post: ret = a, b : (0 <= a <= b < n) ^ (P.t. u : a <= u <= b : abs(v[u-1] - v[u]) == 1) : b - a + 1 }
* { Invariante: 0 <= i <= j <= n ^
*				1 <= segmento <= n ^
*				segmento = #k : 0 <= k <= j : abs(v[k-1] - v[k]) == 1 }
* { Cota: n - j + 1 }
* { Complejidad: O(n), donde n es el número de elementos del vector }
*/

int segmentoMasLargo(vector<int> const& v, int n) {

	int i = 0, j = 1, segmento = 1;

	if (v.empty()) segmento = 0;

	while (j < n) {

		if (abs(v[j-1] - v[j]) != 1) {
			i = j;
		}
		segmento = max(segmento, j - i + 1);
		j++;
	}

	return segmento;
}

void casoDePrueba() {
	
	int n;
	cin >> n;
	vector<int> v(n);

	for (int i = 0; i < n; i++)
		cin >> v[i];

	cout << segmentoMasLargo(v, n) << "\n";
}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;
}