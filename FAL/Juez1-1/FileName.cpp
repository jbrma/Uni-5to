#include <iostream>
#include <vector>

using namespace std;

/*  Este problema consiste en que tenemos una serie de vi�etas en las que vienen dadas las alturas de cada uno de los elementos. Queremos averiguar si
*   cada una de las vi�etas consiste en una de los hermanos Dalton o no. Para que una vi�eta sea de los hermanos Dalton, las alturas deben de estar ordenadas
*   de mayor a menor, o al contrario de menor a mayor. Para resolverlo, primero compruebo los 2 primeros elementos de una vi�eta para averiguar si podr�a
*   estar esa vi�eta ordenada de menor a mayor o de mayor a menor. Dependiendo de cada caso, comprobamos en un bucle que se verifique una de las dos propiedades,
*   hasta completar la vi�eta.
*
    ESPECIFICACI�N:
*       Precondici�n P: { N >= 2 && N <= 100000 && for all i: 0 <= i <= N : alturas[i] > 0 && alturas[i] <= 1000000 }
*       fun esDalton(vector<int> alturas) dev {bool dalton}
*       Postcondici�n Q: { dalton : ((for all i: 0 <= i < alturas.size() : alturas[i] < alturas[i + 1]) || (for all j : 0 <= j < alturas.size() :
                            alturas[j] > alturas[j + 1])) }

    INVARIANTE:     En el cuerpo del bucle calculamos el booleano dalton.
        Inv : { dalton == ( (for all i : 0 <= i < alturas.size() : alturas[i] < alturas[i + 1]) || (for all j : 0 <= j < alturas.size() :
                             alturas[j] > alturas[j + 1]) ) && i <= alturas.size() && j <= alturas.size() }

    FUNCI�N DE COTA: Para demostrar la terminaci�n del bucle. Esta es una funci�n de las variables que intervienen en la condici�n del bucle que
                     es positiva y decrece en cada vuelta del bucle. La variable i crece en cada vuelta, por lo tanto -i decrece en cada vuelta.
                     Para que la funci�n sea positiva le sumamos un valor mayor que el m�ximo que puede tomar i. (Como el bucle empieza en i = 1, le sumamos
                     1 a la funci�n de cota para que sea positiva.

        t(i) = alturas.size() - i + 1.

    COSTE: En cuanto al coste de la soluci�n, es O(N) lineal, donde N es el n�mero de elementos de la vi�eta (alturas.size()).
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
    else {      // los 2 primeros valores ser�an iguales
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