#include <iostream>
#include <vector>
using namespace std;

struct tTorneo {
    bool hayJug;
    int rAct;
    int numPartidos;
};

tTorneo dyv(const vector<char>& v, int r, int ini, int fin) {

    if (ini == fin){ // solo un jugador
        if (v[ini] == '1') return { true, 0, 0 };
        else return { false, 0, 0 };
    }
    else {

        int m = (ini + fin) / 2;

        tTorneo izq = dyv(v, r, ini, m);
        tTorneo dcha = dyv(v, r, m+1, fin);

        int ronda = izq.numPartidos + 1;

        if (izq.hayJug && dcha.hayJug && ronda <= r) {
            return{ true, ronda, izq.numPartidos + dcha.numPartidos + 1 };
        }
        else if (izq.hayJug || dcha.hayJug) {
            return{ true, ronda, izq.numPartidos + dcha.numPartidos };
        }
        else {
            return{ false, ronda, izq.numPartidos + dcha.numPartidos };
        }
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

    cout << dyv(v, r, 0, n - 1).numPartidos << " \n";

    return true;

} // casoDePrueba

int main() {

    while (casoDePrueba())
        ;

    return 0;

} // main
