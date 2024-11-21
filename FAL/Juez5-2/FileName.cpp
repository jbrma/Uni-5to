#include <iostream>
#include <vector>

using namespace std;

pair<bool, int> caucasico(const vector<int>& v, int ini, int fin) {

	if (ini == fin) {
		if(v[ini]%2 == 0) return { true, 1 };
		else return { true, 0 };
	}
	else {

		int m = (ini + fin) / 2;

		auto izq = caucasico(v, ini, m);
		auto dcha = caucasico(v, m+1, fin);

		if (izq.first && dcha.first && abs(izq.second - dcha.second) < 3)
			return { true, izq.second + dcha.second };
		else
			return { false, izq.second + dcha.second };
	}
}

bool casoDePrueba() {

	int n;
	cin >> n;

	if (n == 0) // Fin de la entrada
		return false;

	vector<int> v(n);
	for (int i = 0; i < n; i++)
		cin >> v[i];
	
	cout << (caucasico(v, 0, n - 1).first ? "SI\n" : "NO\n");

	return true;

}

int main() {

	while (casoDePrueba());

	return 0;
}