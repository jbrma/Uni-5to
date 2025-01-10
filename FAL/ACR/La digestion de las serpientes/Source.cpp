#include <iostream>
#include <vector>
using namespace std;


int serpientes(const vector<int>& v, int k) {

    int i = 0, j = 0, rest = k, period = 0;

    while (j < v.size()) {

        if (v[j] == 0) {
            if (v[i] == 1) rest--;
            else i++;
        }
        else {
            if (v[i] == 1 && rest >= 0) period = max(period, j - i + 1);
            else i = j;
            rest = k;
        }
        j++;
    }
    return period;
}

bool casoDePrueba() {

    int n, k;
    cin >> n >> k;

    if (n == 0 && k == 0)
        return false;
    else {
        
        vector<int> v(n);
        for (int i = 0; i < n; i++) {
            cin >> v[i];
        }

        cout << serpientes(v, k) << "\n";

        return true;
    }

} // casoDePrueba

int main() {

    while (casoDePrueba())
        ;

    return 0;

} // main
