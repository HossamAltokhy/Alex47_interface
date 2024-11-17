#include <avr/io.h>
#include "DIO_Interface.h"

void DIO_Set_PORT_DIR(char PORT, char DIR){
    switch(PORT){
        case _PORTA:
            DDRA = DIR;
            break;
        case _PORTB:
            DDRB = DIR;
            break;
        case _PORTC:
            DDRC = DIR;
            break;
        case _PORTD:
            DDRD = DIR;
            break;
    }
}
void DIO_Set_PORT_VALUE(char PORT, char Val){
    switch(PORT){
        case _PORTA:
            PORTA = Val;
            break;
        case _PORTB:
            PORTB = Val;
            break;
        case _PORTC:
            PORTC = Val;
            break;
        case _PORTD:
            PORTD = Val;
            break;
    }
}
void DIO_Set_PIN_DIR(char PORT,char PIN, char DIR){
    switch(PORT){
        case _PORTA:
            PORTA |= (1<<PIN);
            break;
        case _PORTB:
            PORTB |= (1<<PIN);
            break;
        case _PORTC:
            PORTC |= (1<<PIN);
            break;
        case _PORTD:
            PORTD |= (1<<PIN);
            break;
    }
}

