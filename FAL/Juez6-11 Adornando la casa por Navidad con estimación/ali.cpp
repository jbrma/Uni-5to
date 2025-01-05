#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

// •Estimación optimista con función de estimación (como la vista de tipo voraz)
// Requiere ordenar primero los datos por densidad / proporción

struct tAdorno {
	int coste;
	int superficie;

	//Funcion q se ejecutará al utilizar el operador ">", => Cuando se llame al sort()
	//Hará que mis elementos tAdorno del vector se ordenen de mayor a menor densidad (superficie/coste)
	//di = vi/ pi => Densidad = valor / peso = superficie / coste
	bool operator>(const tAdorno& other) const {
		return (float)superficie / coste > (float)other.superficie / other.coste;
	}
};

struct tSol {
	int superficieTotal;
	int costetotal;
};

bool esValida(int pres, tSol solActual) {
	return solActual.costetotal <= pres;
}

void printParcial(const vector<bool>& sol, tSol solAct) {
	for (int i = 0; i < sol.size(); i++) {
		if (sol[i]) cout << i << " ";
	}
	cout << "con superficie: " << solAct.superficieTotal << "\n";
}

//Estimación realista de la superficie máxima restante que ocuparé
//Funciona de manera que voy comprando los adornos en el orden que más me compensa (adornos originalmente ordenados de mayor a menor densidad) hasta que me quede sin dinero
int estimacion(const vector<tAdorno>& adornos, int k, int num, int pres, tSol solActual) {

	int dineroPorGastar = pres - solActual.costetotal;
	int maxSuperfPendiente = 0;
	int i = k + 1;

	while (i < num && adornos[i].coste <= dineroPorGastar) {
		dineroPorGastar -= adornos[i].coste;
		maxSuperfPendiente += adornos[i].superficie;
		i++;
	}
	/* En este ejercicio no se podría añadir una "fracción de adorno" según el enunciado
	if (i < num) // Del último que ya no me puedo comprar por falta de dinero, añadimos la fracción que si me pueda permitir
		maxSuperfPendiente += dineroPorGastar * (float) (adornos[i].coste / adornos[i].superficie);
	*/
	return maxSuperfPendiente;
}

void resolver(const vector<tAdorno>& adornos, int num, int pres, int k, vector<bool>& sol, tSol solActual, tSol& solMejor) {

	if (!esValida(pres, solActual)) return;

	if (k == num) {
		// Caso base: se han procesado todos los adornos
		printParcial(sol, solActual);
		if (solActual.superficieTotal > solMejor.superficieTotal) {
			solMejor = solActual;
		}
		return;
	}

	// Intentar no comprar el adorno k
	resolver(adornos, num, pres, k + 1, sol, solActual, solMejor);

	// Intentar comprar el adorno k
	solActual.superficieTotal += adornos[k].superficie;
	solActual.costetotal += adornos[k].coste;
	sol[k] = true;

	int maxSuperfPendiente = estimacion(adornos, k, num, pres, solActual);
	if (solActual.superficieTotal + maxSuperfPendiente <= solMejor.superficieTotal) {
		solActual.superficieTotal -= adornos[k].superficie;
		solActual.costetotal -= adornos[k].coste;
	}

	resolver(adornos, num, pres, k + 1, sol, solActual, solMejor);
	
	solActual.superficieTotal -= adornos[k].superficie;
	solActual.costetotal -= adornos[k].coste;
	sol[k] = false;


}


bool casoDePrueba() {

	int num, presupuesto;
	cin >> num >> presupuesto;

	if (!cin)
		return false;

	else {

		vector<tAdorno> adornos(num);
		vector<bool> sol(num, false);

		for (int i = 0; i < num; i++) {
			cin >> adornos[i].coste >> adornos[i].superficie;
		}

		//Ordeno el vector adornos de mayor a menor densidad
		sort(adornos.begin(), adornos.end(), greater<tAdorno>());

		for (int i = 0; i < sol.size(); i++) {
			cout << i << ": " << adornos[i].coste << " " << adornos[i].superficie << "\n";
		}

		//Maximizar el espacio ocupado por los adornos
		tSol mejorSol = { 0, 0 };

		resolver(adornos, num, presupuesto, 0, sol, { 0, 0 }, mejorSol);

		cout << mejorSol.superficieTotal << "\n";

		return true;
	}
}

int main() {

	while (casoDePrueba());

	return 0;
}
