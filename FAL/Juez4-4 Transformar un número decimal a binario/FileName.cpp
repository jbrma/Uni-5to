#include <iostream>

using namespace std;

string binario(int n) {

	string bin = "";
	
	if (n == 1)
		return bin.append("1");
	else if(n == 0)
		return bin.append("0");

	if (n == 2)
		bin.append("10");
	else if (n == 3)
		bin.append("11");
	else {

		bin = binario(n / 2);

		if (n % 2 == 0)
			bin.append("0");
		else
			bin.append("1");
	}

	return bin;
}

bool casoDePrueba() {
	
	int n;
	cin >> n;

	cout << binario(n) << "\n";

	return true;
	
}

int main() {

	int numcasos;
	cin >> numcasos;

	while (numcasos--) {
		casoDePrueba();
	}

	return 0;
}