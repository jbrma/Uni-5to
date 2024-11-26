#include <iostream>
#include <vector>

using namespace std;

/* Coste: O(n) en el peor caso, siendo n el numero de elementos del vector.
* 
* Función de recurrencia:
* 
*				c1				n = 1
*	T(n) =		c2				n = 2
*				T(n/2) + c3		n > 2
*/

struct tOrdenado{
	bool sol;
	int maximo;
	int minimo;
};

tOrdenado parcordenado(const vector<int>& v, int ini, int fin) {

	if (ini  == fin) {
		return { true, 0, 0 };
	}
	else if (ini + 1 == fin) {
		if (v[fin] >= v[ini]) 
			return { true, v[fin], v[ini] };
	}
	else {

		int m = (ini + fin) / 2;

		auto izq = parcordenado(v, ini, m);
		auto dcha = parcordenado(v, m+1, fin);

		if (izq.sol && dcha.sol && izq.minimo <= dcha.minimo && dcha.maximo >= izq.maximo )
			return { true, 0, 0 };
	}

	return { false, 0, 0 };
}

bool casoDePrueba() {

	vector<int> v;

	int i;
	cin >> i;

	if (i == 0)
		return false;

	while (i != 0) {
		v.push_back(i);
		cin >> i;
	}

	cout << (parcordenado(v, 0, v.size() - 1).sol ? "SI\n" : "NO\n");

	return true;

}

int main() {

	while (casoDePrueba());

	return 0;
}