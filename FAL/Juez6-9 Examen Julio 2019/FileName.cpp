#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

struct tTema {
	float tiempo;
	float primero;
	float segundo;
};

struct tSol {
	vector<int> sol; // vector de temas guardados
	float tiempoAct;
	float notaActprimero;
	float notaActsegundo;
};

void va(int N, int t, int k, const vector<tTema>& v, tSol& sol, vector<bool> &marcas, float& nota) {

	if (sol.tiempoAct > t) return;

	if (k == N) {
		if (sol.notaActprimero >= 5 && sol.notaActsegundo >= 5) {
			float media = (sol.notaActprimero + sol.notaActsegundo) / 2;
			nota = max(nota, media);
		}
		return;
	}

	va(N, t, k + 1, v, sol, marcas, nota); // no incluye el tema actual


	if (!marcas[k]) { // incluye el tema actual si aun no se ha usado
		marcas[k] = true;

		sol.tiempoAct += v[k].tiempo;
		sol.notaActprimero += v[k].primero;
		sol.notaActsegundo += v[k].segundo;
			
		va(N, t, k + 1, v, sol, marcas, nota);

		sol.tiempoAct -= v[k].tiempo;
		sol.notaActprimero -= v[k].primero;
		sol.notaActsegundo -= v[k].segundo;

		marcas[k] = false;
	}
		
	

}

bool casoDePrueba() {
	tTema t;
	int N;
	float tiempo;
	cin >> N;

	if (N == -1) // Fin de la entrada
		return false;
	
	cin >> tiempo;

	vector<tTema> v(N);

	for (int i = 0; i < N; i++) {
		cin >> v[i].tiempo >> v[i].primero >> v[i].segundo;
	}

	tSol sol;
	sol.sol.resize(N, -1);
	sol.notaActprimero = 0;
	sol.notaActsegundo = 0;
	sol.tiempoAct = 0;

	vector<bool> marcas(N);
	float nota = 0;

	va(N, tiempo, 0, v, sol, marcas, nota);

	cout << ((nota >= 5) ? nota : -1) << "\n";

	return true;
	
}

int main() {

	while (casoDePrueba());

	return 0;
}