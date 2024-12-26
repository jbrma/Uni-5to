#include <iostream>
#include <string>

using namespace std;

//bool polidivisible(int n, int& digitos) {
//
//	if (n < 10) {
//		return n % digitos == 0;
//	}
//	else {
//
//		bool sol = polidivisible(n / 10, digitos);
//		digitos++;
//		return sol && n % digitos == 0;
//	}
//
//}

void generaPolidivisibles(long long n, int d) {

	int digitosActuales = to_string(n).length();

	cout << n << "\n";

	if (digitosActuales < d) {
		for (int i = 0; i <= 9; i++) {
			long long next = n * 10 + i;
			long long newModulo = next % (digitosActuales + 1);
			if(newModulo == 0) generaPolidivisibles(next, d);
		}

	}
	
}


bool casoDePrueba() {
	// Lectura de la entrada (primer valor en el caso de que sea más de uno)
	// cin >> 

	long long n, d;
	cin >> n >> d;

	if (!cin) 
		return false;

	generaPolidivisibles(n, d);

	cout << "---\n";

	return true;
	
}

int main() {

	while (casoDePrueba());

	return 0;
}