#include <iostream>
#include <vector>
#include <map>
using namespace std;

bool casoDePrueba() {
    int n;
    cin >> n;

    if (n == 0)
        return false;
    else {
        
        vector<int> colores(n);
        for (int i = 0; i < n; i++) cin >> colores[i];
        
        map<int, pair<int, int>> mapa; // color y su primera y ultima posicion
        int diseminacion = 0;
        bool sec = false; // secuencia de colores

        for (int i = 0; i < n; i++) {
            int anterior = 0; // color anterior
            int c = colores[i];
            
            if(i > 0) anterior = colores[i - 1];

            if (mapa.count(c) == 0) { // aun no existe el color
                
                mapa[c] = { i, i };
            }
            else if( anterior != c ){
                mapa[c].second = i; // solo actualiza la ultima pos si ya existe
                diseminacion += mapa[c].second - mapa[c].first;
                sec = false;
            }
            else {
                mapa[c] = { i - 1, i };
                if (!sec) {
                    diseminacion += mapa[c].second - mapa[c].first;
                    sec = true;
                }
            }
        }

        cout << diseminacion << "\n";

        return true;
    }

} // casoDePrueba

int main() {

    while (casoDePrueba())
        ;

    return 0;

} // main
