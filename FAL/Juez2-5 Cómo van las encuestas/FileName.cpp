#include <iostream>
#include <vector>

using namespace std;


pair< long long int, int> atipico(vector<int> v) {

	int i = 1, atipico = v[0], cont = 1;
	long long int suma = v[0];

	while (i < v.size()) {

		suma += v[i];
		
		if (atipico > v[i]) {
			atipico = v[i];
			cont = 1;
		}
		else if (atipico == v[i]) {
			cont++;
		}
		
		i++;
	}

	return { suma - (atipico * cont), v.size() - cont };
}

void casoDePrueba() {
	// Resuelve un caso de prueba

	int n; 
	cin >> n;

	vector<int> v(n);

	for (int i = 0; i < n; i++)
		cin >> v[i];

	auto sol = atipico(v);
	cout << sol.first << " " << sol.second << "\n";

}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;
}