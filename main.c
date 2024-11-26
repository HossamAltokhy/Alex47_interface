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
#include "mLEDs.h"
#include "mButtons.h"
#include "mBuzzer.h"
#include "mRelay.h"
#include "m7Segment.h"
#include "mLCD4.h"


char led0_ON_str[]= "LED0 is ON";
char led0_OFF_str[]= "LED0 is OFF";

int main(void) {
    /* Replace with your application code */

    // btn >> increment var >> LCD
    
    // btn >> decrement var >> LCD
    
    init_BTNS();
    init_LEDs();
    _delay_ms(10);
    init_LCD4();
    _delay_ms(50);
    int temp  = 50;
    while (1) {

        if(BTNs_isPressed(BTN0)){
            LED_ON(LED0);
            LCD4_clear();
            LCD4_str(led0_ON_str);
            _delay_ms(200);
        }
     
        if(BTNs_isPressed(BTN1)){
            LED_OFF(LED0);
            LCD4_clear();
            LCD4_str(led0_OFF_str);
            _delay_ms(200);
        }
        
       
        

    }
}
