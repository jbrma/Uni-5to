#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

/* ESPECIFICACIÓN;
*
* { Pre: 0 <= n <= longitud(v) ^ P.t. i : 0 <= i <= n : 0 < v[i] <= 150000}
* { Post: ret = P.t. i : 0 <= i <= n : v[i] != v[i+1] ^ v[i] < v[i+1]}
* { Invariante: 0 <= i <= n ^ 0 <= pos <= i}
* { Cota: n - i - 1}
* { Complejidad: O(nlogn), donde n es el numero de elementos de vector }
*/

void eliminarepes(vector<int> & v, int n) {

	sort(v.begin(), v.end()); // O(nlogn)

	int pos = 0, i = 0;
	while (i < n - 1) {

		if (v[i] != v[i + 1]) {
			pos++;
		}

		i++;
		v[pos] = v[i];
	}
	v.resize(pos + 1);

}

bool casoDePrueba() {

	int n;
	cin >> n;

	if (!cin) return false;
	vector<int> v(n);

	for (int i = 0; i < n; i++)
		cin >> v[i];

	eliminarepes(v, n);

	for (int i = 0; i < v.size(); i++)
		cout << v[i] << " ";
	cout << "\n";

	return true;
}

int main() {

	while (casoDePrueba());
		

	return 0;
}