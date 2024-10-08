#include <iostream>
#include <vector>	

using namespace std;

bool resuelve(int d, vector<int> const& v) {
	bool apta = true;
	int i = 0;
	
	bool asciende = true;
	int acumul = 0;

	while(i < v.size() && apta) {
	
		if (asciende) {

			if (v[i] < v[i + 1]) { //asciende
				acumul += v[i + 1] - v[i];

				if (acumul > d)
					apta = false;
			}
			else { //desciende
				asciende = false;
				acumul = 0;
			}
		}
		 // hacer lo mismo para cuando desciende

	
	}

	return apta;
}

bool casoDePrueba() {
	// Lectura de la entrada (primer valor en el caso de que sea más de uno)
	int d, n;
	cin >> d >> n;

	vector<int> v(n);

	for (int i = 0; i < n; i++) {
		cin >> v[i];
	}

	if (!cin) // Fin de la entrada
		return false;

	cout << (resuelve(d, v) ? "APTA" : "NO APTA") << endl;

	return true;
	
}

int main() {

	while (casoDePrueba());

	return 0;
}