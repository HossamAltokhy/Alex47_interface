#include <avr/io.h>
#include <avr/interrupt.h>
#include "EXT_INT.h"


void init_INT(int INT_num, int INT_mode){
    switch(INT_num){
        case INTERRUPT_0:
            MCUCR |= INT_mode;
            GICR |= (1<<INT0);
            break;
        case INTERRUPT_1:
            MCUCR |= (INT_mode<<2);
            GICR |= (1<<INT1);
            break;
        case INTERRUPT_2:
            MCUCSR |= (INT_mode << ISC2); 
            GICR |= (1<<INT2);
            break;
    }
}
void INT_Enable_Global(){
    sei();
}

