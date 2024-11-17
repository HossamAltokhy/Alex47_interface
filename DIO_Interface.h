/* 
 * File:   DIO_Interface.h
 * Author: hossa
 *
 * Created on November 17, 2024, 5:52 PM
 */

#ifndef DIO_INTERFACE_H
#define	DIO_INTERFACE_H


#define _PORTA   0
#define _PORTB   1
#define _PORTC   2
#define _PORTD   3

void DIO_Set_PORT_DIR(char PORT, char DIR);
void DIO_Set_PORT_VALUE(char PORT, char Val);
void DIO_Set_PIN_DIR(char PORT,char PIN, char DIR);


#endif	/* DIO_INTERFACE_H */

