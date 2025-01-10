#include <iostream>
#include <vector>

using namespace std;

#define MAX 1000

struct tSol {
    int valor = 0;
    int nMonedas = 0;
};

void resolver(const vector<int>& monedas, vector<bool>& marcas, vector<tSol> piratas, int k, int& nSol, int& minDif, int m) {

    if (k == monedas.size()) {
        if (piratas[0].nMonedas >= m && piratas[1].nMonedas >= m) {
            if (minDif == abs(piratas[0].valor - piratas[1].valor)) nSol++;
            else if (minDif > abs(piratas[0].valor - piratas[1].valor)) {
                minDif = min(minDif, abs(piratas[0].valor - piratas[1].valor));
                nSol = 1;

            }
        }
        return;
    }


    for (int i = 0; i < 2; i++) {

        piratas[i].nMonedas++;
        piratas[i].valor += monedas[k];
        marcas[k] = i;

        resolver(monedas, marcas, piratas, k + 1, nSol, minDif, m);

        piratas[i].nMonedas--;
        piratas[i].valor -= monedas[k];


    }


}


bool resuelveCaso() {

    int n;
    cin >> n;

    if (n == -1) return false;

    int m;
    cin >> m;
    vector<int> monedas(n);
    for (int i = 0; i < n; i++) {
        cin >> monedas[i];
    }

    vector<bool> marcas(n);
    vector<tSol> piratas(2);
    int nSol = 0, minDif = INT_MAX;


    resolver(monedas, marcas, piratas, 0, nSol, minDif, m);

    cout << minDif << " " << nSol << "\n";


    return true;
}



int main() {

    while (resuelveCaso());
    return 0;
}