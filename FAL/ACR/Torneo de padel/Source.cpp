#include <iostream>
#include <vector>
using namespace std;

int dyv(const vector<char>& v, int r, int ini, int fin) {

    if (ini + 1 == fin) {

        if(v[ini]  )

        return ini;
    }
    else {

        int m = (ini + fin) / 2;

        int izq = dyv(v, r, ini, m - 1);
        int dcha = dyv(v, r, m, fin);

        return izq + dcha;
    }
}

bool casoDePrueba() {

    int n, r;
    cin >> n >> r;

    if (n == 0 && r == 0)
        return false;

    vector<char> v(n);
    for (int i = 0; i < n; i++) {
        cin >> v[i];
    }



    return true;

} // casoDePrueba

int main() {

    while (casoDePrueba())
        ;

    return 0;

} // main
