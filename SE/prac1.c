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

#define XPAR_RS232_UART_1_BASEADDR 0x84000000

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
                if(uartBuffer[c] >= 'a' && uartBuffer[c] <= 'e') {
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

void ledOutput(int operator){
	int Status;
	XGpio Gpio;

	/* Initialize the GPIO driver so that it's ready to use,
	specify the device ID that is generated in xparameters.h */
	Status = XGpio_Initialize(&Gpio, XPAR_AXI_GPIO_0_DEVICE_ID);
	if (Status != XST_SUCCESS) {
	return XST_FAILURE; }

	/* Set the direction for all signals to be outputs in channel 1*/
	XGpio_SetDataDirection(&Gpio, 1, 0x0);

	/* Set the GPIO outputs to low */
	XGpio_DiscreteWrite(&Gpio, 1, 0x0);

	/* Turn on led in index operator */
	XGpio_DiscreteWrite(&Gpio, 1, 1 << operator);

}

int menu(){
	xil_printf("MENU:\n");
	xil_printf("\ta.- Introducir primer operando y visualizarlo en los leds y en la pantalla.\n\r");
	xil_printf("\tb.- Introducir segundo operando y visualizarlo en los leds y en la pantalla.\n\r");
	xil_printf("\tc.- Sumar y visualizar el resultado en los leds y en la pantalla.\n\r");
	xil_printf("\td.- Restar y visualizar el resultado en los leds y en la pantalla.\n\r");
	xil_printf("\te.- Visualizar en los leds y en la pantalla el dato le�do en los switches\n\r");
	xil_printf("\tSeleccione una de los siguientes opciones:\n\r");

	return getLetter();
}

int operando;
char key;

int main()
{
	// escribe un mensaje en la pantalla del hyperterminal
	xil_printf("Introduce una letra\n\r");

	// lee una letra de teclado
	key = XUartLite_RecvByte(XPAR_RS232_UART_1_BASEADDR);

	// escribe una letra en la pantalla del hyperterminal
	XUartLite_SendByte(XPAR_RS232_UART_1_BASEADDR,key);
	print("\r\n");

	//Menu


	// lee un n�mero de teclado
	operando = getNumber();
	xil_printf("el dato leido es %d", operando);

	//escribir el led
	ledOutput(operando);

	print("\r\n");
	print("-- Exiting main() --\r\n");
	return 0;
}