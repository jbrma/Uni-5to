#include <iostream>
#include <vector>
using namespace std;

int viajesNecesarios(const vector<int>& v, int m) {
	int suma = 0, numViajes = 1;
	for (int i = 0; i < v.size(); i++) {
		if (suma + v[i] <= m) //si aun puedo meter mi obra v[i] en el camión de capacidad de carga m
			suma += v[i]; //Meto el peso de v[i] en mi viaje actual
		else {
			suma = v[i]; //Meto el peso de v[i] en mi proximo viaje
			numViajes++;
		}
	}
	return numViajes;
}

int minCarga(const vector<int>& v, int viajesPosibles, int ini, int fin) {

	if (ini == fin) 
		return ini;

	else { // queda alguna solución en el espacio de soluciones

		int m = (ini + fin) / 2;

		if (viajesNecesarios(v, m) <= viajesPosibles) { //Si para mi "solución provisional" minCarga = m necesito menos viajes de los que puedo hacer, reduzco más la carga
			return minCarga(v, viajesPosibles, ini, m);
		}
		else { //si los viajes que necesito para trasportar la carga m son más de los que puedo hacer, aumento más la carga
			return minCarga(v, viajesPosibles, m + 1, fin);
		}
	}
}

bool casoDePrueba() {

	int numObras, numViajes;
	cin >> numObras >> numViajes;

	if (numObras == 0 && numViajes == 0) // Fin de la entrada
		return false;

	else {

		vector<int> v(numObras);

		int suma = 0;
		int maxPeso = 0;
		for (int i = 0; i < numObras; i++) {
			cin >> v[i];
			suma += v[i];
			maxPeso = max(v[i], maxPeso);
		}

		/* ini y fin no van a ser la primera posición y la última de mi vector sino la primera 
		solucion posible en mi espacio de soluciones y la última

		En este caso mi intervalo de soluciones posibles será:
		[maximo peso de una obra, suma de todos los pesos]

		ya que como poco mi camión necesitaría ser capaz de cargar la más pesada de las obras (en el mejor de
		los casos, si me dejan hacer viajes de sobra) y en el peor de los casos, si solo puedo hacer un viaje 
		el camión tendrá que cargar con el peso de todas obras.

		[ini = maxPeso, fin = suma]
		*/

		int sol = minCarga(v, numViajes, maxPeso, suma);

		cout << sol << "\n";

		return true;
	}
}

int main() {

	while (casoDePrueba());

	return 0;
}