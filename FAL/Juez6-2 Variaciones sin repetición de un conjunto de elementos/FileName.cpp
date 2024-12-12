#include <iostream>
#include <vector>

using namespace std;

void varRepe(vector<char>& palabra, vector<bool>& marcaje, int k, int m, int n) {


	for (char i = 'a'; i < 'a' + m; i++) {
		palabra[k] = i;

		if (!marcaje[i - 'a']) {

			marcaje[i - 'a'] = true;

			if (k == n - 1) {
				for (char c : palabra) cout << c;
				cout << "\n";
			}
			else varRepe(palabra, marcaje, k + 1, m, n);

			marcaje[i - 'a'] = false;
		}



	}

}
bool casoDePrueba() {

	int m, n;
	cin >> m >> n;

	if (!cin) // Fin de la entrada
		return false;
	else {

		vector<char> palabra(n);
		vector<bool> marcaje(m, false);

		varRepe(palabra, marcaje, 0, m, n);

		return true;
	}
}

int main() {

	while (casoDePrueba());

	return 0;
}