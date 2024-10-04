#include <iostream>
#include <vector>

using namespace std;

/*  Este problema consiste en que tenemos una serie de viñetas en las que vienen dadas las alturas de cada uno de los elementos. Queremos averiguar si
*   cada una de las viñetas consiste en una de los hermanos Dalton o no. Para que una viñeta sea de los hermanos Dalton, las alturas deben de estar ordenadas
*   de mayor a menor, o al contrario de menor a mayor. Para resolverlo, primero compruebo los 2 primeros elementos de una viñeta para averiguar si podría
*   estar esa viñeta ordenada de menor a mayor o de mayor a menor. Dependiendo de cada caso, comprobamos en un bucle que se verifique una de las dos propiedades,
*   hasta completar la viñeta.
*
    ESPECIFICACIÓN:
*       Precondición P: { N >= 2 && N <= 100000 && for all i: 0 <= i <= N : alturas[i] > 0 && alturas[i] <= 1000000 }
*       fun esDalton(vector<int> alturas) dev {bool dalton}
*       Postcondición Q: { dalton : ((for all i: 0 <= i < alturas.size() : alturas[i] < alturas[i + 1]) || (for all j : 0 <= j < alturas.size() :
                            alturas[j] > alturas[j + 1])) }

    INVARIANTE:     En el cuerpo del bucle calculamos el booleano dalton.
        Inv : { dalton == ( (for all i : 0 <= i < alturas.size() : alturas[i] < alturas[i + 1]) || (for all j : 0 <= j < alturas.size() :
                             alturas[j] > alturas[j + 1]) ) && i <= alturas.size() && j <= alturas.size() }

    FUNCIÓN DE COTA: Para demostrar la terminación del bucle. Esta es una función de las variables que intervienen en la condición del bucle que
                     es positiva y decrece en cada vuelta del bucle. La variable i crece en cada vuelta, por lo tanto -i decrece en cada vuelta.
                     Para que la función sea positiva le sumamos un valor mayor que el máximo que puede tomar i. (Como el bucle empieza en i = 1, le sumamos
                     1 a la función de cota para que sea positiva.

        t(i) = alturas.size() - i + 1.

    COSTE: En cuanto al coste de la solución, es O(N) lineal, donde N es el número de elementos de la viñeta (alturas.size()).
*/

bool dalton(vector<int> const& alturas) {
    bool dalton = true;
    if (alturas[0] < alturas[1]) {      // Si el primer valor es mayor que el segundo.
        int i = 1;
        while (dalton && i < alturas.size() - 1) {
            if (alturas[i] >= alturas[i + 1]) {     
                dalton = false;
            }
            i++;
        }
    }
    else if (alturas[0] > alturas[1]) {     // Si el primer valor es menor que el segundo.
        int j = 0;
        while (dalton && j < alturas.size() - 1) { 
            if (alturas[j] <= alturas[j + 1]) {     
                dalton = false;
            }
            j++;
        }
    }
    else {      // los 2 primeros valores serían iguales
        dalton = false;
    }

    return dalton;
}

bool casoDePrueba() {
	// Lectura de la entrada
	int n;
	cin >> n;

	if (n == 0) // Fin de la entrada
		return false;
	
	vector<int> alturas(n);
	for (int i = 0; i < n; i++) {
		cin >> alturas[i];
	}

	bool sol = dalton(alturas);

    if (sol)
        cout << "DALTON\n";
    else
        cout << "DESCONOCIDOS\n";

    return true;
}

int main() {

	while (casoDePrueba());

	return 0;
}