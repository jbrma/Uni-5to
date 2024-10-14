#include <iostream>

using namespace std;

// { Pre: 2 <= n <= 200000 }
int misterio(int v[], int n); /* return ret */
// { Post: ret = max a, b : 0 <= a < b < n : v[a] + v[b] }

int misterio(int v[], int n) {

	int max_sum = v[0] + v[1];

	int max_v = v[0];

	for (int b = 1; b < n; ++b) {

		max_sum = max(max_sum, max_v + v[b]);
		max_v = max(max_v, v[b]);
	}

	return max_sum;
}

void casoDePrueba() {
	// Resuelve un caso de prueba

	int n;
	cin >> n;

	int v[200000];

	for (int i = 0; i < n; i++)
		cin >> v[i];

	cout << misterio(v, n) << endl;
}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;
}