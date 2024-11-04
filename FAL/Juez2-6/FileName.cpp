#include <iostream>

using namespace std;

/* ESPECIFICACION:
* 
* { Pre: 0 <= n < longitud(v) }
* 
* { Post: ret = (j - i) : 0 <= i < j < n : ( P.t. k : i <= k < j : v[k] == v[k + 1] ) }
* 
*/

int tamSegmentoMaximo(int v[], int n) {

	int i = 0, cont = 1, auxCont = 1;

	while (i < n - 1) {
		
		if (v[i] == v[i + 1]) 
			cont++;
		else
			cont = 1;

		auxCont = max(cont, auxCont);
			
		i++;
	}

	return auxCont;
}


bool casoDePrueba() {
	// Lectura de la entrada (primer valor en el caso de que sea más de uno)
	// cin >> 

	int n;
	cin >> n;

	if (n == 0) // Fin de la entrada
		return false;

	int v[100000];

	for (int i = 0; i < n; i++)
		cin >> v[i];

	cout << tamSegmentoMaximo(v, n) << "\n";

	return true;
}

int main() {

	while (casoDePrueba());

	return 0;
}