/* 
 * File:   DIO_Interface.h
 * Author: hossa
 *
 * Created on November 17, 2024, 5:52 PM
 */

#ifndef DIO_INTERFACE_H
#define	DIO_INTERFACE_H


#define INPUT   0
#define OUTPUT   1
#define INPUT_PORT  0x00
#define OUTPUT_PORT   0xFF

#define LOW      0
#define HIGH     1


void DIO_Set_PORT_DIR(volatile uint8_t *  PORTx, char DIR);
void DIO_Set_PORT_VALUE(volatile uint8_t * PORTx, char Val);

void DIO_Read_PORT(volatile uint8_t* PORTx, unsigned char* val);



void DIO_Set_PIN_DIR(volatile uint8_t * PORTx, char PIN, char DIR);

void DIO_Set_PIN_VALUE(volatile uint8_t* PORTx,char PIN, char Val);
void DIO_Read_PIN(volatile uint8_t * PORTx, char PIN, char* val);
void DIO_Toggle_PIN(volatile uint8_t* PORTx, char PIN);
#endif	/* DIO_INTERFACE_H */

