#include <iostream>
#include <vector>

using namespace std;

int esqui(vector<int> const& v) {

	int i = 1, tramoAct = 1, tramoMax = 1;

	while (i < v.size()) {

		if (v[i - 1] >= v[i]) {
			tramoAct++;
		}
		else
			tramoAct = 1;

		tramoMax = max(tramoAct, tramoMax);

		i++;
	}

	if (v.empty()) tramoMax = 0;

	return tramoMax;
}


bool casoDePrueba() {
	// Lectura de la entrada (primer valor en el caso de que sea más de uno)
	// cin >> 

	int n;
	cin >> n;

	if (!cin) // Fin de la entrada
		return false;

	vector<int> v(n);

	for (int i = 0; i < n; i++)
		cin >> v[i];

	cout << esqui(v) << "\n";

	return true;
}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;
}