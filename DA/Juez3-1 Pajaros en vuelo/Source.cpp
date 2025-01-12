#include <fstream>
#include <iostream>
#include <utility>
#include <queue>
#include <algorithm>

#include "PriorityQueue.h"

using namespace std;

bool resuelveCaso() {

    int uno, parejas;
    cin >> uno >> parejas;
    if (uno == 0 && parejas == 0)
        return false;

    PriorityQueue<int, greater<int>> menores;
    PriorityQueue<int> mayores;

    int punta = uno;

    for (int i = 0; i < parejas; i++) {
        int a, b;
        cin >> a >> b;
        
        if (a > punta) {
            mayores.push(a);
        }
        else {
            menores.push(a);
        }
       
        if (b > punta) {
            mayores.push(b);
        }
        else {
            menores.push(b);
        }

        if (mayores.size() > menores.size()) {
            menores.push(punta);
            punta = mayores.top();
            mayores.pop();
        }
        else if (menores.size() > mayores.size()) {
            mayores.push(punta);
            punta = menores.top();
            menores.pop();
        }

        cout << punta << " ";
    }
    cout << "\n";

    return true;
}

int main() {
#ifndef DOMJUDGE
    std::ifstream in("casos.txt");
    auto cinbuf = std::cin.rdbuf(in.rdbuf());
#endif

    while (resuelveCaso());

#ifndef DOMJUDGE
    std::cin.rdbuf(cinbuf);
#endif
    return 0;
}