/* 
 * File:   mUART.h
 * Author: hossa
 *
 * Created on December 17, 2024, 3:34 PM
 */

#ifndef MUART_H
#define	MUART_H


#define UART_INT_RXCIE     RXCIE
#define UART_INT_TXCIE     TXCIE
#define UART_INT_UDRIE     UDRIE

void init_UART(int BaudRate);

void UART_send(char cData);
void UART_send_str(char* pData);
void UART_send_num(int num);

char UART_receive();

void UART_INT_Enable(char UART_INT);
#endif	/* MUART_H */

