#include <iostream>
#include <vector>
#include <climits>
using namespace std;

int vinedo(const vector<int>& v, int u) {
    int i = 0, j = 0, acum = 0, sol = INT_MAX;

    while (j <= v.size()) {

        if (acum >= u) {
            sol = min(sol, acum);
        }

        if (acum < u && j < v.size()) {
            acum += v[j];
            j++;
        }
        else if (i < v.size()) {
            acum -= v[i];
            i++;
        }
        else {
            j++;
        }
    }

    return sol;
}

bool casoDePrueba() {

    // LEER CASO DE PRUEBA
    int n, u;
    cin >> n >> u;

    if (n == 0 && u == 0)
        return false;
 
    vector<int> v(n);
    for (int i = 0; i < n; i++) {
        cin >> v[i];
    }

    auto sol = vinedo(v, u);
    if (sol == INT_MAX) cout << "IMPOSIBLE\n";
    else cout << sol << "\n";


    return true;

} // casoDePrueba

int main() {

    while (casoDePrueba())
        ;

    return 0;

} // main
