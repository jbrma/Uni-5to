#include <stdio.h>
#include <stdbool.h>
#include <xstatus.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xgpio.h"
#include "gpio_header.h"
#include "copro.h"

#define REG0_OFFSET COPRO_S00_AXI_SLV_REG0_OFFSET
#define REG1_OFFSET COPRO_S00_AXI_SLV_REG1_OFFSET
#define REG2_OFFSET COPRO_S00_AXI_SLV_REG2_OFFSET
#define REG3_OFFSET COPRO_S00_AXI_SLV_REG3_OFFSET

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

int main() {
    int operando1 = 0, operando2 = 0, resultado = 0;
    int switch_value, read_value;

    XGpio Gpio;
    int Status = XGpio_Initialize(&Gpio, XPAR_AXI_GPIO_0_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        xil_printf("Error al inicializar GPIO.\n\r");
        return XST_FAILURE;
    }

    XGpio_SetDataDirection(&Gpio, 1, 0x00);  // LEDs como salida
    XGpio_SetDataDirection(&Gpio, 2, 0xFF);  // Switches como entrada

    while (1) {
        
        switch_value = XGpio_DiscreteRead(&Gpio, 2) & 0xF;

        switch (switch_value) {
            case 0x00:
                xil_printf("Escriba el primer operando:\n\r");
                operando1 = getNumber();
                COPRO_mWriteReg(XPAR_COPRO_0_S00_AXI_BASEADDR, REG1_OFFSET, operando1);
                break;
            case 0x01:
                xil_printf("Escriba el segundo operando:\n\r");
                operando2 = getNumber();
                COPRO_mWriteReg(XPAR_COPRO_0_S00_AXI_BASEADDR, REG2_OFFSET, operando2);
                break;
            case 0x03:
                COPRO_mWriteReg(XPAR_COPRO_0_S00_AXI_BASEADDR, REG0_OFFSET, 0x00000000); // Sumar
                xil_printf("Suma realizada, valor en reg3:\n\r");
                resultado = COPRO_mReadReg(XPAR_COPRO_0_S00_AXI_BASEADDR, REG3_OFFSET);
                xil_printf("Resultado = %d\n\r", resultado);
                break;
            case 0x02:
                COPRO_mWriteReg(XPAR_COPRO_0_S00_AXI_BASEADDR, REG0_OFFSET, 0x00000001); // Restar
                xil_printf("Resta realizada, valor en reg3:\n\r");
                resultado = COPRO_mReadReg(XPAR_COPRO_0_S00_AXI_BASEADDR, REG3_OFFSET);
                xil_printf("Resultado = %d\n\r", resultado);
                break;
            default:
                xil_printf("No se ha seleccionado una opción válida.\n\r");
                break;
        }

        // Leer el valor de reg3 y mostrar en LEDs
        read_value = COPRO_mReadReg(XPAR_COPRO_0_S00_AXI_BASEADDR, REG3_OFFSET);
        XGpio_DiscreteWrite(&Gpio, 1, read_value & 0xFF);  // Mostrar en LEDs
    }

    return 0;
}
