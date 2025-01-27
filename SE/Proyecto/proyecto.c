#include <stdio.h>
#include <math.h>
#include "xparameters.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "rgb.h"
#include "teclado.h"
#include "matriz.h"

#define GPIO_TECLADO_BASEADDR XPAR_TECLADO_0_S00_AXI_BASEADDR
#define GPIO_RGB_BASEADDR XPAR_RGB_0_S00_AXI_BASEADDR
#define MAX_INTENSITY 15
#define MIN_INTENSITY 0

/* Definitions for peripheral MATRIZ_0 */
#define XPAR_MATRIZ_0_DEVICE_ID 0
#define XPAR_MATRIZ_0_S00_AXI_BASEADDR 0x44A20000
#define XPAR_MATRIZ_0_S00_AXI_HIGHADDR 0x44A2FFFF

/**
 *
 * 1 = 12
 * 3 = 0
 * 4 = 13
 * 5 = 9
 * 6 = 8
 * 7 = 14
 * 8 = 6
 * 9 = 5
 * 0 = 3
 * A = 15
 * B = 2
 * C = 1
 * D = 4
 * E = 7
 * F = 10
 *
 */

// Colores comunes
const char *colores[] = {
    "NEGRO", "ROJO", "VERDE", "AZUL", "AMARILLO", "CIAN", "MAGENTA", "BLANCO"
};
const int valores_colores[][3] = {
    {0, 0, 0}, {15, 0, 0}, {0, 15, 0}, {0, 0, 15}, {15, 15, 0}, {0, 15, 15}, {15, 0, 15}, {15, 15, 15}
};

int LETTERS[26][7] = {
    {14, 17, 17, 31, 17, 17, 17}, // A
    {30, 17, 17, 30, 17, 17, 30}, // B
    {14, 17, 16, 16, 16, 17, 14}, // C
    {30, 17, 17, 17, 17, 17, 30}, // D
    {31, 16, 16, 30, 16, 16, 31}, // E
    {31, 16, 16, 30, 16, 16, 16}, // F
    {14, 17, 16, 23, 17, 17, 14}, // G
    {17, 17, 17, 31, 17, 17, 17}, // H
    {14, 4, 4, 4, 4, 4, 14},     // I
    {7, 2, 2, 2, 2, 18, 12},     // J
    {17, 18, 20, 24, 20, 18, 17}, // K
    {16, 16, 16, 16, 16, 16, 31}, // L
    {17, 27, 21, 21, 17, 17, 17}, // M
    {17, 17, 25, 21, 19, 17, 17}, // N
    {14, 17, 17, 17, 17, 17, 14}, // O
    {30, 17, 17, 30, 16, 16, 16}, // P
    {14, 17, 17, 17, 21, 18, 13}, // Q
    {30, 17, 17, 30, 20, 18, 17}, // R
    {14, 17, 16, 14, 1, 17, 14},  // S
    {31, 4, 4, 4, 4, 4, 4},      // T
    {17, 17, 17, 17, 17, 17, 14}, // U
    {17, 17, 17, 17, 17, 10, 4},  // V
    {17, 17, 17, 21, 21, 27, 17}, // W
    {17, 17, 10, 4, 10, 17, 17},  // X
    {17, 17, 17, 10, 4, 4, 4},    // Y
    {31, 1, 2, 4, 8, 16, 31}      // Z
};
void delay(int cycles) {
    for (volatile int i = 0; i < cycles; i++);
}
void printDatos(int fila, int columna, int dato) {
    int data = ((fila & 0xff) << 24) |
               ((columna & 0xff) << 17) |
               ((dato & 0xff) << 8);
    MATRIZ_mWriteReg(XPAR_MATRIZ_0_S00_AXI_BASEADDR,
                            MATRIZ_S00_AXI_SLV_REG0_OFFSET,
                            data);
}
void limpiarMatrizPuntos() {
    for (int fila = 0; fila < 7; fila++) {
        for (int columna = 0; columna < 40; columna++) {
            printDatos(fila, columna, 0);
        }
    }
}

void printLetter(char letter, int columnaInicio) {
    if (letter >= 'A' && letter <= 'Z') {
        int index = letter - 'A';

        for (int fila = 0; fila < 7; fila++) {
            printDatos(fila, columnaInicio, LETTERS[index][fila]);
        }
    }
}

void mostrarNombreColor(const char *nombre) {
    limpiarMatrizPuntos();
    int columnaInicio = 0;
    for (int i = 0; nombre[i] != '\0'; i++) {
        printLetter(nombre[i], columnaInicio);
        columnaInicio += 1; // Espaciado entre letras
    }
}

int encontrarColor(int r, int g, int b) {
    for (int i = 0; i < 8; i++) {
        if (valores_colores[i][0] == r && valores_colores[i][1] == g && valores_colores[i][2] == b) {
            return i;
        }
    }
    return -1; // Color no encontrado
}

int main() {
    xil_printf("Iniciando programa...\n");
    limpiarMatrizPuntos();
    int red = -1, green = -1, blue = -1;
    int changed = 0;
    while (1) {
    	TECLADO_mWriteReg(GPIO_TECLADO_BASEADDR, TECLADO_S00_AXI_SLV_REG0_OFFSET, -1);
    	changed = 0;
        xil_printf("Introduce el valor de Rojo (0-15): \n");
    	while(changed == 0){

            delay(1000000);
            red = TECLADO_mReadReg(GPIO_TECLADO_BASEADDR, TECLADO_S00_AXI_SLV_REG0_OFFSET);
            TECLADO_mWriteReg(GPIO_TECLADO_BASEADDR, TECLADO_S00_AXI_SLV_REG0_OFFSET, -1);

            if(red != -1) changed = 1;
    	}
        xil_printf("%d\n", red);

    	changed = 0;
        xil_printf("Introduce el valor de Verde (0-15): \n");
    	while(changed == 0){

            delay(1000000);
            green = TECLADO_mReadReg(GPIO_TECLADO_BASEADDR, TECLADO_S00_AXI_SLV_REG0_OFFSET);
            TECLADO_mWriteReg(GPIO_TECLADO_BASEADDR, TECLADO_S00_AXI_SLV_REG0_OFFSET, -1);

            if(green != -1) changed = 1;
    	}
        xil_printf("%d\n", green);

    	changed = 0;
        xil_printf("Introduce el valor de Azul (0-15): \n");
    	while(changed == 0){

            delay(1000000);
            blue = TECLADO_mReadReg(GPIO_TECLADO_BASEADDR, TECLADO_S00_AXI_SLV_REG0_OFFSET);
            TECLADO_mWriteReg(GPIO_TECLADO_BASEADDR, TECLADO_S00_AXI_SLV_REG0_OFFSET, -1);

            if(blue != -1) changed = 1;
    	}
        xil_printf("%d\n", blue);


        if (red < MIN_INTENSITY || red > MAX_INTENSITY ||
            green < MIN_INTENSITY || green > MAX_INTENSITY ||
            blue < MIN_INTENSITY || blue > MAX_INTENSITY) {
            xil_printf("Valores fuera de rango.\n");
            continue;
        }

        // Configurar LED RGB // quiza comprobar que si el valor es 15, escribir directamente un 255
        // o mejor multiplicar cada valor por 17, 15*17 = 255
        RGB_mWriteReg(GPIO_RGB_BASEADDR, RGB_S00_AXI_SLV_REG0_OFFSET, (red * 17) - 255);
        RGB_mWriteReg(GPIO_RGB_BASEADDR, RGB_S00_AXI_SLV_REG1_OFFSET, (green * 17) - 255);
        RGB_mWriteReg(GPIO_RGB_BASEADDR, RGB_S00_AXI_SLV_REG2_OFFSET, (blue * 17) - 255);

        // Mostrar nombre del color en matriz
        int color_index = encontrarColor(red, green, blue);
        if (color_index != -1) {
            mostrarNombreColor(colores[color_index]);
            xil_printf("%s\n", colores[color_index]);
        } else {
            mostrarNombreColor("Personalizado");
        }

        xil_printf("Color mostrado: R=%d, G=%d, B=%d\n", red, green, blue);
        delay(1000000);
    }

    return 0;
}
