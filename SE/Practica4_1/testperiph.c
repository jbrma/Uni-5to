/*
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 */

/*
 * 
 *
 * This file is a generated sample test application.
 *
 * This application is intended to test and/or illustrate some 
 * functionality of your system.  The contents of this file may
 * vary depending on the IP in your system and may use existing
 * IP driver functions.  These drivers will be generated in your
 * SDK application project when you run the "Generate Libraries" menu item.
 *
 */
#include <stdio.h>
#include <math.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "matriz.h"
#include "conversorad.h";
#include "xil_printf.h"

int DIGITS[10][7] = {
    {14, 17, 19, 21, 25, 17, 14},
    {4, 12, 4, 4, 4, 4, 14},
    {14, 17, 1, 2, 4, 8, 31},
    {14, 17, 1, 6, 1, 17, 14},
    {2, 6, 10, 18, 31, 2, 2},
    {31, 16, 30, 1, 1, 17, 14},
    {14, 17, 16, 30, 17, 17, 14},
    {31, 1, 2, 4, 8, 8, 8},
    {14, 17, 17, 14, 17, 17, 14},
    {14, 17, 17, 15, 1, 17, 14}
};

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

void printDigit(int digit, int columnaInicio) {
    for (int fila = 0; fila < 7; fila++) {
        printDatos(fila, columnaInicio, DIGITS[digit][fila]);
    }
}

void printNumber(int number) {
    int columnaInicio = 0;
    int digits[3] = {0, 0, 0};

    for (int i = 0; i <= 2; i++) {
        digits[i] = number % 10;
        number /= 10;
    }

    for (int i = 0; i < 3; i++) {
        printDigit(digits[i], columnaInicio);
        columnaInicio += 7;
    }
}

int main() {
    Xil_ICacheEnable();
    Xil_DCacheEnable();
    xil_printf("---Entering main---\n\r");

    xil_printf("Antes de pintar la matriz de puntos\n\r");

    limpiarMatrizPuntos();
    int analog, valid, uno = (5<<23);
    CONVERSORAD_mWriteReg(XPAR_CONVERSORAD_0_S00_AXI_BASEADDR,CONVERSORAD_S00_AXI_SLV_REG0_OFFSET, uno);

    while(1) {
        valid = CONVERSORAD_mReadReg(XPAR_CONVERSORAD_0_S00_AXI_BASEADDR,CONVERSORAD_S00_AXI_SLV_REG0_OFFSET);
        analog = CONVERSORAD_mReadReg(XPAR_CONVERSORAD_0_S00_AXI_BASEADDR,CONVERSORAD_S00_AXI_SLV_REG1_OFFSET);

        if(valid >= pow(2, 24)){
            xil_printf("%d\n\r", analog);
            limpiarMatrizPuntos();
            printNumber(analog);
        }

        CONVERSORAD_mWriteReg(XPAR_CONVERSORAD_0_S00_AXI_BASEADDR,CONVERSORAD_S00_AXI_SLV_REG0_OFFSET, uno);
    }

    xil_printf("---Exiting main---\n\r");
    Xil_DCacheDisable();
    Xil_ICacheDisable();

    return 0;
}
