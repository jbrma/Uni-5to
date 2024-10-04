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
#include <stdint.h>
#include <stdbool.h>
#include <xstatus.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xgpio.h"
#include "gpio_header.h"

//#define XPAR_RS232_UART_1_BASEADDR 0x84000000
#define XPAR_RS232_UART_1_BASEADDR XPAR_UARTLITE_0_BASEADDR
int getNumber (){
	uint8_t byte;
	uint8_t uartBuffer[16];
	bool validNumber;
	int digitIndex;
	int digit, number, sign;
	int c;

	while(1){
		byte = 0x00;
		digit = 0;
		digitIndex = 0;
		number = 0;
		validNumber = TRUE;
		//get bytes from uart until RETURN is entered
		while(byte != 0x0d){
			byte = XUartLite_RecvByte(XPAR_RS232_UART_1_BASEADDR);
			uartBuffer[digitIndex] = byte;
			XUartLite_SendByte(XPAR_RS232_UART_1_BASEADDR,byte);
			digitIndex++;
		}

		//calculate number from string of digits
		for(c = 0; c < (digitIndex - 1); c++){
			if(c == 0){
				//check if first byte is a "-"
				if(uartBuffer[c] == 0x2D){
					sign = -1;
					digit = 0;
				}
				//check if first byte is a digit
				else if((uartBuffer[c] >> 4) == 0x03){
					sign = 1;
					digit = (uartBuffer[c] & 0x0F);
				}
				else
					validNumber = FALSE;
				}
				else{
					//check byte is a digit
					if((uartBuffer[c] >> 4) == 0x03){
						digit = (uartBuffer[c] & 0x0F);
					}
					else
						validNumber = FALSE;
				}
				number = (number * 10) + digit;
			}
			number *= sign;
			if(validNumber == TRUE){
				return number;
			}
			print("This is not a valid number.\n\r");
	}
}

int getLetter() {
    uint8_t byte;
    uint8_t uartBuffer[16];
    bool validLetter;
    int letterIndex;
    int letter, number;
    int c;

    while(1) {
        byte = 0x00;
        letterIndex = 0;
        number = 0;
        validLetter = TRUE;

        // Get bytes from UART until RETURN is entered
        while(byte != 0x0d) {
            byte = XUartLite_RecvByte(XPAR_RS232_UART_1_BASEADDR);
            uartBuffer[letterIndex] = byte;
            XUartLite_SendByte(XPAR_RS232_UART_1_BASEADDR, byte);
            letterIndex++;
        }


        // Calculate number from string of letters (a-e)
        for(c = 0; c < (letterIndex - 1); c++) {
            if(c == 0) {
                // Check if first byte is a valid letter (a-e)
                if(uartBuffer[c] >= 'a' && uartBuffer[c] <= 'f') {
                    number = (uartBuffer[c] - 'a' + 1); // Convert 'a' to 1, 'b' to 2, etc.
                } else {
                    validLetter = FALSE;
                }
            } else {
                validLetter = FALSE;  // Only allow one letter
            }
        }

        if(validLetter == TRUE) {
            return number;
        }

        print("This is not a valid letter.\n\r");
    }
}

void ledOutput(int operator, XGpio Gpio){

	/* Set the GPIO outputs to low */
	XGpio_DiscreteWrite(&Gpio, 1, 0x0);

	/* Turn on led in index operator */
	XGpio_DiscreteWrite(&Gpio, 1, operator);

}

int ReadSwitch(XGpio Gpio){
	u32 DataRead;
	DataRead = XGpio_DiscreteRead(&Gpio, 2);
	XGpio_DiscreteWrite(&Gpio, 1, DataRead);
	xil_printf("Valor de los switches: %d\n\r", DataRead);
}

int menu(){
	xil_printf("MENU:\n");
	xil_printf("\ta.- Introducir primer operando y visualizarlo en los leds y en la pantalla.\n\r");
	xil_printf("\tb.- Introducir segundo operando y visualizarlo en los leds y en la pantalla.\n\r");
	xil_printf("\tc.- Sumar y visualizar el resultado en los leds y en la pantalla.\n\r");
	xil_printf("\td.- Restar y visualizar el resultado en los leds y en la pantalla.\n\r");
	xil_printf("\te.- Visualizar en los leds y en la pantalla el dato leido en los switches\n\r");
	xil_printf("\tf.- Finalizar programa.\n\r");
	xil_printf("\tSeleccione una de las opciones:\n\r");

	return getLetter();
}

char key;

int main()
{

	int operando1 = 0, operando2 = 0, sum = 0, resultS = 0, resultR = 0, switchOut = 0;
	int fin = 0;
	int opcion;
	int Status;

	XGpio Gpio;

	/* Initialize the GPIO driver so that it's ready to use,
	specify the device ID that is generated in xparameters.h */
	Status = XGpio_Initialize(&Gpio, XPAR_AXI_GPIO_0_DEVICE_ID);
	/* Set the direction for all signals to be outputs in channel 1*/
	XGpio_SetDataDirection(&Gpio, 1, 0x0);

	if (Status != XST_SUCCESS) {
		return XST_FAILURE; }

	XGpio_SetDataDirection(&Gpio, 2, 0xFFFFFFFF);

    while(fin == 0){

        opcion = menu();

        switch(opcion){
            case 1: // Opción 'a' - Introducir primer operando
                xil_printf("Introduce el primer operando:\n\r");
                operando1 = getNumber();
                xil_printf("Primer operando: %d\n\r", operando1); // Pantalla
                ledOutput(operando1, Gpio); // Leds
                break;

            case 2: // Opción 'b' - Introducir segundo operando
                xil_printf("Introduce el segundo operando:\n\r");
                operando2 = getNumber();
                xil_printf("Segundo operando: %d\n\r", operando2);
                ledOutput(operando2, Gpio);
                break;

            case 3: // Opción 'c' - Sumar operandos
                resultS = operando1 + operando2;
                xil_printf("Resultado de la suma: %d\n\r", resultS);
                ledOutput(resultS, Gpio);
                break;

            case 4: // Opción 'd' - Restar operandos
                resultR = operando1 - operando2;
                xil_printf("Resultado de la resta: %d\n\r", resultR);
                ledOutput(resultR, Gpio);
                break;

            case 5: // Opción 'e' - Leer switches
                xil_printf("Leyendo switches...\n\r");
                switchOut = ReadSwitch(Gpio);
				ledOutput(switchOut, Gpio);
                break;
            case 6:
            	fin = 1;
            	break;
			// quizá otra opción para salir del menu
			// fin = 1

            default:
                xil_printf("Opción no válida. Intenta de nuevo.\n\r");
                break;
        }

        print("\r\n");
    }

	print("\r\n");
	print("-- Exiting main() --\r\n");
	return 0;
}
