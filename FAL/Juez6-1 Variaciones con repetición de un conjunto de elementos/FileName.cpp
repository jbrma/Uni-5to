#include <iostream>
#include <vector>

using namespace std;

void varRepe(vector<char> & palabra, int k, int m, int n) {


	for (char i = 'a'; i < 'a' + m; i++) {
		palabra[k] = i;

		if (k == n - 1) {
			for (char c : palabra) cout << c;
			cout << "\n";
		}
		else varRepe(palabra, k + 1, m, n);


	}

}
bool casoDePrueba() {

	int m, n;
	cin >> m >> n;

	if (!cin) // Fin de la entrada
		return false;
	else {	

		vector<char> palabra(n);

		varRepe(palabra, 0, m, n);

		return true;
	}
}

int main() {

	while (casoDePrueba());

	return 0;
}