#include <iostream>
#include <vector>
#include <cstdlib>

using namespace std;

void buscaPuntoFijo(int n) {
    int izq = 0, dcha = n - 1;
    long long pf = n;

    while (izq <= dcha) {
        long long m = (izq + dcha) / 2;

        cout << "? " << m << '\n';
        long long v;
        cin >> v;

        if (v == m) {
            pf = m;
            dcha = m - 1;
        }
        else if (v < m) {
            izq = m + 1;
        }
        else {
            dcha = m - 1;
        }
    }

    if (pf == n) {
        pf = izq;
    }


    cout << "Respuesta: " << pf << "\n";
}

bool casoDePrueba() {

    int a;
    cin >> a;
    if (a == 0) return false;

    buscaPuntoFijo(a);

    return true;

}

int main() {

    while (casoDePrueba());

    return 0;
}