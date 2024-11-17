/*
 * File:   main.c
 * Author: hossa
 *
 * Created on November 12, 2024, 5:50 PM
 */


#include <avr/io.h>
#define F_CPU 16000000UL
#include <util/delay.h>
#include "DIO_Interface.h"

// KIT LEDs
#define LED0     PC2
#define LED1     PC7
#define LED2     PD3

// KIT BTNs
#define BTN0     PB0
#define BTN1     PD6
#define BTN2     PD2

int main(void) {
    /* Replace with your application code */
    DDRC |= (1<<LED0);
    DDRC |= (1<<LED1);
    DDRD |= (1<<LED2);
    
    
    
    DDRB &= ~(1<<BTN0);
    DDRD &= ~(1<<BTN1);
    DDRD &= ~(1<<BTN2);
    
//    DIO_Set_PORT_DIR(_PORTA, 0xFF);
//    DIO_Set_PORT_VALUE(_PORTA, 0x0F);

    while (1) {
        if(PINB & (1<<BTN0)){
            PORTC |= (1<<LED0);
        }
        else{
            PORTC &= ~(1<<LED0);
        }
        
        if(PIND & (1<<BTN1)){
            PORTC |= (1<<LED1);
        }
        else{
            PORTC &= ~(1<<LED1);
        }
        
        if(PIND & (1<<BTN2)){
            PORTD |= (1<<LED2);
        }
        else{
            PORTD &= ~(1<<LED2);
        }
    }
}
