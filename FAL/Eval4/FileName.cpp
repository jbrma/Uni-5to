#include <iostream>
#include <vector>
#include <climits> // Para usar INT_MIN como recompensa inicial
#include <algorithm> // Para usar max

using namespace std;

struct tDatos {
    int n_teclas, longitud_secuencia, castigo;
    vector<vector<int>> teclas;
};

struct tSol {
    int castigo_actual;
    int recompensa_actual, recompensa_max;
    vector<int> sol;
    vector<int> recompensa_maxima_restante; // Recompensa máxima posible desde cada posición
};

bool esValida(const tDatos& d, const tSol& s) {
    return abs(s.castigo_actual) <= d.castigo;
}

// Calcular recompensa máxima posible desde la posición actual hacia adelante
void calcularRecompensaMaxima(const tDatos& d, tSol& s) {
    s.recompensa_maxima_restante.resize(d.longitud_secuencia, 0);
    vector<int> max_por_fila(d.n_teclas, INT_MIN);

    for (int i = 0; i < d.n_teclas; i++) {
        for (int j = 0; j < d.n_teclas; j++) {
            max_por_fila[i] = max(max_por_fila[i], d.teclas[i][j]);
        }
    }

    // Suma acumulativa desde el final hacia el inicio
    for (int k = d.longitud_secuencia - 1; k >= 0; k--) {
        s.recompensa_maxima_restante[k] = (k == d.longitud_secuencia - 1) ? 0 : s.recompensa_maxima_restante[k + 1];
        s.recompensa_maxima_restante[k] += *max_element(max_por_fila.begin(), max_por_fila.end());
    }
}

int resolver(int k, const tDatos& d, tSol& s) {
    int numSoluciones = 0;
    for (int i = 0; i < d.n_teclas; i++) {
        s.sol[k] = i;

        // Marcar transición
        if (k > 0) {
            int efecto = d.teclas[s.sol[k - 1]][i];
            if (efecto < 0) { // Castigo
                s.castigo_actual += efecto;
            }
            else { // Recompensa
                s.recompensa_actual += efecto;
            }
        }

        if (k == d.longitud_secuencia - 1) { // Caso base: secuencia completa
            if (esValida(d, s)) {
                numSoluciones++;
                s.recompensa_max = max(s.recompensa_max, s.recompensa_actual);
            }
        }
        else if (esValida(d, s)) { // Poda por castigo y optimalidad
            int recompensa_posible = s.recompensa_actual + s.recompensa_maxima_restante[k + 1];
            if (recompensa_posible > s.recompensa_max) {
                numSoluciones += resolver(k + 1, d, s);
            }
        }

        // Desmarcar transición
        if (k > 0) {
            int efecto = d.teclas[s.sol[k - 1]][i];
            if (efecto < 0) { // Castigo
                s.castigo_actual -= efecto;
            }
            else { // Recompensa
                s.recompensa_actual -= efecto;
            }
        }
    }
    return numSoluciones;
}

void resuelveCaso() {
    tDatos d;
    tSol s;

    // Leer datos del problema
    cin >> d.n_teclas >> d.longitud_secuencia >> d.castigo;
    d.teclas.resize(d.n_teclas, vector<int>(d.n_teclas));

    for (int i = 0; i < d.n_teclas; i++) {
        for (int j = 0; j < d.n_teclas; j++) {
            cin >> d.teclas[i][j];
        }
    }

    // Inicializar solución
    s.sol.resize(d.longitud_secuencia);
    s.castigo_actual = 0;
    s.recompensa_actual = 0;
    s.recompensa_max = INT_MIN; // Inicialmente, recompensa mínima

    // Calcular recompensa máxima acumulativa posible
    calcularRecompensaMaxima(d, s);

    // Resolver el caso
    if (resolver(0, d, s) == 0) {
        cout << "NO";
    }
    else {
        cout << s.recompensa_max;
    }
    cout << endl;
}

int main() {
    unsigned int num_casos;
    cin >> num_casos;
    while (num_casos--) resuelveCaso();
    return 0;
}