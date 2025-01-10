#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;


int main() {

    int n;
    cin >> n;

    while (n != 0) {
        long long maxL = 0, acum = 0, v;

        for (int i = 0; i < n; ++i) {
            cin >> v;
            if (v > maxL) maxL = v;
            acum += v;
        }
        cout << (maxL* n) - acum << "\n";
        cin >> n;

    }

    return 0;

} // main
