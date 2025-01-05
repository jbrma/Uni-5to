#include <iostream>
#include <vector>
#include <cstdlib>

using namespace std;

void buscaBin(int a, int b) { // [a..b)
    if (a == b) 
        cout << "Respuesta: " << a << '\n';
    else { // preguntar por v[m] para seguir a izda o dcha

        int m = (a + b) / 2;
        cout << "? " << m << '\n'; // ¿v[m]?

        string respuesta;
        cin >> respuesta;

        if (respuesta == "<=") // v[m] <= que el buscado
            buscaBin(a, m); // buscamos a la izda: en [a..m)
        else
            buscaBin(m + 1, b); // buscamos a la dcha: en [m+1..b)
    }
}

bool casoDePrueba() {

	int a, b;
    cin >> a >> b;
    if (a == 0 && b == 0) return false;

    buscaBin(a, b);

	return true;

}

int main() {

	while (casoDePrueba());

	return 0;
}