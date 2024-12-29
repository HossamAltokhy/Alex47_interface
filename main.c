/*
 * File:   main.c
 * Author: hossa
 *
 * Created on November 12, 2024, 5:50 PM
 */


#include <avr/io.h>
#include <avr/interrupt.h>
#define F_CPU 16000000UL
#include <util/delay.h>
#include "DIO_Interface.h"
#include "mLEDs.h"
#include "mButtons.h"
#include "mBuzzer.h"
#include "mRelay.h"
#include "m7Segment.h"
#include "mLCD4.h"
#include "EXT_INT.h"
#include "mADC.h"
#include "mTimer.h"
#include "mUART.h"


char str[] = "Hello World Alex47 \r";




ISR(USART_RXC_vect){
    
    char data = UDR;
    
    LCD4_write(data);
    switch(data){
            case 'A':
                LED_ON(LED0);
                break;
            case 'B':
                LED_ON(LED1);
                break;
            case 'C':
                LED_ON(LED2);
                break;
            case 'E':
                LED_OFF(LED0);
                break;
            case 'F':
                LED_OFF(LED1);
                break;
            case 'G':
                LED_OFF(LED2);
                break;
        }
    
}

int main(void) {
    /* Replace with your application code */
    init_LCD4();
    init_UART(9600);
    UART_INT_Enable(UART_INT_RXCIE);
    
    
    
    int x = 100;
    
    init_LEDs();
    
    
    sei();
    while (1) {

        
       
        
        
        
        

    }
}
