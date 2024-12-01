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


ISR(INT1_vect){
    
    LED_TOGGLE(LED1);
            
}





int main(void) {
    /* Replace with your application code */
    
    init_LEDs();
    init_BTNS();
    
    
    
    init_INT(INTERRUPT_1, INT_FALLING_EDGE);
    INT_Enable_Global();
    
    while (1) {

        if(BTNs_isPressed(BTN0)){
            LED_TOGGLE(LED0);
            _delay_ms(500);
        }
//        if(BTNs_isPressed(BTN1)){
//            LED_OFF(LED0);
//            _delay_ms(250);
//        }
//       
        

    }
}

