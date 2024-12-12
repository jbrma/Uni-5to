#include <stdio.h>
#include "xparameters.h"
#include "xil_printf.h"
#include "rgb.h"
#include "teclado.h"
#include "xil_io.h"

#define GPIO_TECLADO_BASEADDR XPAR_TECLADO_0_S00_AXI_BASEADDR
#define GPIO_RGB_BASEADDR XPAR_RGB_0_S00_AXI_BASEADDR

#define MAX_INTENSITY 255
#define MIN_INTENSITY 0

/**
 *
 * 1 = 12
 * 2 = 11
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

#define INCREMENT_RED  0x0C
#define DECREMENT_RED  0x0B
#define INCREMENT_GREEN 0x0D
#define DECREMENT_GREEN 0x09
#define INCREMENT_BLUE  0x0E
#define DECREMENT_BLUE  0x06

volatile u8 red_intensity = 255;
volatile u8 green_intensity = 255;
volatile u8 blue_intensity = 255;

void delay(int cycles) {
    for (volatile int i = 0; i < cycles; i++);
}

void update_intensity(uint8_t tecla) {
    switch (tecla) {
        case INCREMENT_RED:
            if (red_intensity < MAX_INTENSITY) red_intensity += 10;
            break;
        case DECREMENT_RED:
            if (red_intensity > MIN_INTENSITY) red_intensity -= 10;
            break;
        case INCREMENT_GREEN:
            if (green_intensity < MAX_INTENSITY) green_intensity += 10;
            break;
        case DECREMENT_GREEN:
            /*if (green_intensity - 10 > MIN_INTENSITY) green_intensity = MIN_INTENSITY;*/
            if (green_intensity > MIN_INTENSITY) green_intensity -= 10;
            break;
        case INCREMENT_BLUE:
            if (blue_intensity < MAX_INTENSITY) blue_intensity += 10;
            break;
        case DECREMENT_BLUE:
            if (blue_intensity > MIN_INTENSITY) blue_intensity -= 10;
            break;
        default:
            break;
    }
	if(red_intensity < MIN_INTENSITY) red_intensity = 0;
	if(green_intensity < MIN_INTENSITY) green_intensity = 0;
	if(blue_intensity < MIN_INTENSITY) blue_intensity = 0;

	if(red_intensity > MAX_INTENSITY) red_intensity = 255;
	if(green_intensity > MAX_INTENSITY) green_intensity = 255;
	if(blue_intensity > MAX_INTENSITY) blue_intensity = 255;
}

int main() {
    xil_printf("Iniciando prueba de control de colores...\n");

    while (1) {
        uint32_t tecla = 0;

        // Leer la tecla presionada desde el teclado
        tecla = TECLADO_mReadReg(GPIO_TECLADO_BASEADDR, TECLADO_S00_AXI_SLV_REG0_OFFSET);
        TECLADO_mWriteReg(GPIO_TECLADO_BASEADDR, TECLADO_S00_AXI_SLV_REG0_OFFSET, 0);
        xil_printf("tecla: %d\n", tecla);

        // Actualizar las intensidades de color
        update_intensity(tecla);

        // Escribir los valores RGB en los registros correspondientes
        RGB_mWriteReg(GPIO_RGB_BASEADDR, RGB_S00_AXI_SLV_REG0_OFFSET, red_intensity% 256);
        RGB_mWriteReg(GPIO_RGB_BASEADDR, RGB_S00_AXI_SLV_REG1_OFFSET, green_intensity% 256);
        RGB_mWriteReg(GPIO_RGB_BASEADDR, RGB_S00_AXI_SLV_REG2_OFFSET, blue_intensity% 256);

        // Imprimir los valores actuales de los colores
        xil_printf("R: %d, G: %d, B: %d\n", 255 - (red_intensity % 256), 255 - (green_intensity % 256), 255 - (blue_intensity % 256));

        delay(100000); // Evitar cambios rápidos
    }

    return 0;
}
