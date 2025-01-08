#include <iostream>
#include <vector>

using namespace std;

pair<bool, int> cine(const vector<int>& v) {

	bool ok = true, impar = false;
	int acum = 0;
	int i = 0;

	while (i < v.size() && ok) {

		if (v[i] % 2 == 0 && !impar) {
			acum++;
		}
		else {
			if (!impar) {
				impar = true;
			}
			else {
				if(v[i] % 2 == 0) ok = false;
			}
		}
		i++;
	}
	
	return { ok, acum };
}

void casoDePrueba() {
	int n;
	cin >> n;

	vector<int> v(n);
	for (int i = 0; i < n; i++) {
		cin >> v[i];
	}

	auto a = cine(v);

	if (a.first) cout << "SI " << a.second << "\n";
	else cout << "NO\n";
}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;
}