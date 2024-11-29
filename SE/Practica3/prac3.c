/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"


// Define las direcciones base de los periféricos (ajusta según tu proyecto)
#define TECLADO_BASEADDR XPAR_TECLADO_0_S00_AXI_BASEADDR
#define LEDS_BASEADDR XPAR_RGB_0_S00_AXI_BASEADDR

// Registros específicos para cada periférico
#define TECLA_REG 0x00  // Registro de lectura del teclado
#define LEDS_REG  0x00  // Registro de escritura de los LEDs

// Intensidades iniciales
volatile uint8_t red_intensity = 0;
volatile uint8_t green_intensity = 0;
volatile uint8_t blue_intensity = 0;

// Incrementos máximos
#define MAX_INTENSITY 255
#define MIN_INTENSITY 0

// Teclas mapeadas
#define INCREMENT_RED  0x01
#define DECREMENT_RED  0x02
#define INCREMENT_GREEN 0x03
#define DECREMENT_GREEN 0x04
#define INCREMENT_BLUE  0x05
#define DECREMENT_BLUE  0x06

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
}

int main() {
    printf("Iniciando prueba de control de colores...\n");

    uint8_t tecla = 0;
    uint8_t led_value = 0;

    while (1) {

        tecla = *(volatile uint8_t *)(TECLADO_BASEADDR + TECLA_REG);

        update_intensity(tecla);

        led_value = (red_intensity << 16) | (green_intensity << 8) | blue_intensity;

        // Escribe en los LEDs
        *(volatile uint8_t *)(LEDS_BASEADDR + LEDS_REG) = led_value;

        printf("R: %d, G: %d, B: %d\n", red_intensity, green_intensity, blue_intensity);

        delay(1000000);  // Evita cambios muy rápidos
    }

    return 0;
}






