#include <iostream>
#include <vector>
#include <cstdlib>

using namespace std;

bool resolver(int num, int ini, int fin) {
    string signo;
    int adivina;
    cin >> signo >> adivina;

    if (adivina == num && signo != "?") {
        cout << "0 0" << '\n';
        return true;
    }
    else {

        if (signo == "?"){
            if (adivina >= num) {
                cout << "<=" << '\n';
                return resolver(num, ini, adivina);
            }
            else {
                cout << ">" << '\n';
                return resolver(num, adivina + 1, fin);
            }
        }
        else
            return resolver(num, ini, fin);
    }
}

bool casoDePrueba() {

	int num = rand();

	if (!cin) return false;

	cout << 0 << " " << 1000000000 << '\n';

	if (resolver(num, 0, 1000000000)) return false;

	return true;

}

int main() {

	while (casoDePrueba());

	return 0;
}