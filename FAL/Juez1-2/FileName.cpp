#include <iostream>
#include <vector>

using namespace std;

pair<int, int> temperaturas(vector<int> const& temp) {
	int picos = 0, valles = 0;

	for (int i = 1; i < temp.size() - 1; i++) {

		if (temp[i] < temp[i - 1] && temp[i] < temp[i + 1])
			valles++;
		else if (temp[i] > temp[i - 1] && temp[i] > temp[i + 1])
			picos++;
	}

	return { picos, valles };
}

void casoDePrueba() {
	// Resuelve un caso de prueba

	int n;
	cin >> n;

	vector<int> temp(n);
	for (int i = 0; i < n; i++) {
		cin >> temp[i];
	}

	auto res = temperaturas(temp);

	cout << res.first << " " << res.second << "\n";
}

int main() {

	int numCasos;
	cin >> numCasos;

	while (numCasos--)
		casoDePrueba();

	return 0;
}