#include <iostream>
#include <vector>

using namespace std;

bool esValida(int N, vector<int> const &v) {

	for (int i = 0; i < N / 2; i++) {

		if (v[i] != v[i + v[i]] && v[i] != v[abs(v[i] - i)]) return false;
	}

	for (int i = 0; i < N; i++) {
		cout << v[i] << " ";
	}
	cout << "\n";
	return true;
}

int va(int N, int k, vector<int>& v, vector<bool> &usados, vector<bool> &posFijada) {

	if (k == N) {
		return esValida(N, v) ? 1 : 0;
	}

	// caso solo uno del el elemento par esté puesto

	auto a = (k + v[k] < N);
	auto b = (k - v[k] >= 0);
	if (!posFijada[k] && 
		( a && !posFijada[k + v[k]]) ||
		( b && !posFijada[k - v[k]])) return va(N, k + 1, v, usados, posFijada);

	int sol = 0;

	for (int i = 1; i <= N/2; i++) {

		if ((k + i) < N && !usados[i] && v[k] == 0 && v[k + i] == 0) {

			v[k] = i;
			v[k + i] = i;

			usados[i] = true;

			sol += va(N, k + 1, v, usados, posFijada);

			v[k] = 0;
			v[k + i] = 0;
			usados[i] = false;

		}
		else if ((posFijada[k] && !posFijada[k + i]) || (!posFijada[k] && posFijada[k + i])) {

			auto aux = v[k];
			(aux != 0) ? v[k + v[k]] = v[k] : v[k] = v[k+ v[k]];
			usados[v[k]] = true;

			sol += va(N, k + 1, v, usados, posFijada);

			usados[i] = false;

		}
	}

	return sol;
}

bool casoDePrueba() {
	int N;
	cin >> N;

	if (N == 0) 
		return false;

	vector<int> v(N);

	for (int i = 0; i < N; i++) {
		cin >> v[i];
	}
	
	vector<bool> posFijada(N, 0); // calcular cuantos pares hay ya completos
	for (int i = 0; i < N; i++) {
		if (v[i] != 0) {
			posFijada[i] = 1;
		}
	}

	vector<bool> usados(N/2 + 1, false);

	//for (int i = 0; i < N; i++) {
	//	if (v[i] != 0) {
	//		if (!usados[v[i]] && pares[v[i]] < 2 && v[i] + i < N && v[v[i] + i] == 0) { // en el caso que la config inicial solo haya puesto un numero de un par
	//			v[v[i] + i] = v[i];
	//			pares[v[i]]++;
	//		}
	//		else if (pares[v[i]] == 1) {
	//			v[abs(v[i] - i)] = v[i];
	//			pares[v[i]]++;
	//		}
	//		usados[v[i]] = true;
	//	}
	//}

	cout << va(N, 0, v, usados, posFijada) << "\n";

	return true;
}

int main() {

	while (casoDePrueba());

	return 0;
}