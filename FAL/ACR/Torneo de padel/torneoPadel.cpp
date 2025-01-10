#include <iostream>
#include <vector>
using namespace std;

/* Coste: O(n) 
Reduccion por division, el tamaño de los datos se va reduciendo dividiendose por un numero constante (b = 2)
* (a = 2), se hacen dos lamadas recursivas
* (k = 0), la combinacion de estas llamadas recursivas tiene un coste constante
* (Por el teorema de la division) a = 2 > b^0 = 1
* O(n^(log(baseb)a)) => O(n^log(base2)2) => O(n^1) => O(n) 
*/

struct sol {
	bool hayJugador; 
	int ronda;
	int numPartidos;
};

sol resolver(const vector<char>& v, int rondas, int ini, int fin) {
	
	if (ini == fin) {
		if (v[ini] == '1') return {true, 0, 0};
		else return { false, 0, 0 };
	}

	else {
		int m = (ini + fin) / 2;

		sol partidoIzq = resolver(v, rondas, ini, m);
		sol partidoDer = resolver(v, rondas, m + 1, fin);

		int numRonda = partidoIzq.ronda + 1;

		//Si hay dos jugadores se juagará el partido, pero este solo se contará si se ha antes o durante la ronda que me piden
		if (partidoIzq.hayJugador && partidoDer.hayJugador && numRonda <= rondas) {
			return { true, numRonda, partidoDer.numPartidos + partidoIzq.numPartidos + 1 };
		}
		else if (partidoIzq.hayJugador || partidoDer.hayJugador) { //Si solo hay un jugador, no se jugará el partido, pero si que este se clasificará para la siguiente ronda
			return { true, numRonda, partidoDer.numPartidos + partidoIzq.numPartidos };
		}
		else {
			return { false, numRonda, partidoDer.numPartidos + partidoIzq.numPartidos };
		}
	}
}

bool casoDePrueba() {

	int numJug, numRond;
	cin >> numJug >> numRond;


	if (numJug == 0 && numRond == 0) // Fin de la entrada
		return false;

	else {

		vector<char> v(numJug);

		for (int i = 0; i < numJug; i++) {
			cin >> v[i];
		}

		cout << resolver(v, numRond, 0, numJug - 1).numPartidos << "\n";

		return true;
	}
}

int main() {

	while (casoDePrueba());

	return 0;
}