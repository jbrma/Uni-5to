#include <iostream>
#include <vector>
using namespace std;

/*
Coste: O(n) -> Líneal: Las operaciones tienen un coste constante y el código tiene un bucle while que iterará (n) veces siempre, tanto 
en el mejor como en el peor de los casos.

Pre: { 1 <= n <= v.size() ^ k >= 0}
int resolver(const vector<int>& v, int n, int k) retun ret;
Post: { ret = Max a, b : (0 <= a <= b < n) ^ (v[a] == 1 ^ v[b] == 1) ^ (cerosConsecutivos(v, a, b)) <= k : b - a + 1 
		donde cerosConsecutivos(v, ini, fin) ret = Max i, j : (ini <= i <= j <= fin) ^ (p.t u : i <= u <= j: v[u] = 0) : j - i + 1 }

Inv: { (0 <= a < b <= n) ^ (num0 = p.t a : 0 <= a < b ^ v[a] == 1 : cerosConsecutivos(v, a, b - 1)) ^
		(ret = Max i, j : (0 <= i <= j < b) ^ (v[i] == 1 ^ v[j] == 1) ^ cerosConsecutivos(v, i, j) <= k : j - i + 1) ^
		(a = Min i : (0 <= i < b) : v[i] == 1 ^ cerosConsecutivos(v, i, b - 1) : i }
*/

int resolver(const vector<int>& v, int n, int k) {

	int a = 0;
	int b = 0;
	int num0 = 0; //Contador del número de 0s consecutivos
	int ret = 0;

	while (b < n) {

		if (v[b] == 0) {
			if (v[a] == 1) num0++;
			else a++;
		}
		else {
			if (v[a] == 1 && num0 <= k) ret = max(ret, b - a + 1);
			else a = b;
			num0 = 0;
		}
		b++;
	}
	return ret;
}

bool casoDePrueba() {
	
	int n, k;
	cin >> n >> k;

	if (n == 0 && k == 0) // Fin de la entrada
		return false;
	else {
		
		vector<int> v(n);

		for (int i = 0; i < n; i++) {
			cin >> v[i];
		}

		cout << resolver(v, n, k) << "\n";

		return true;
	}
}

int main() {

	while (casoDePrueba());

	return 0;
}