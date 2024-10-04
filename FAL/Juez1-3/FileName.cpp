#include <iostream>
#include <vector>
#include <string>

using namespace std;

int numAnyos(string str, vector<string> const& vec) {

	bool encontrado = false;
	int i = vec.size() - 1;

	while (i > -1 && !encontrado) {
		if (vec[i] == str) {
			encontrado = true;
		}
		else
			i--;
	}

	int sol = vec.size() - i;
	if (!encontrado)
		sol = -1;

	return sol;
}

bool casoDePrueba() {
	// Lectura de la entrada
	int anyos;
	cin >> anyos;

	if (anyos == 0) // Fin de la entrada
		return false;

	string nac;
	cin >> nac;

	vector<string> ganadores(anyos);
	
	for (int i = 0; i < anyos; i++) {
		cin >> ganadores[i];
	}
		
	if (numAnyos(nac, ganadores) != -1)
		cout << numAnyos(nac, ganadores) << endl;
	else
		cout << "NUNCA\n";

	return true;
}

int main() {

	while (casoDePrueba());

	return 0;
}