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


ISR(TIMER0_OVF_vect){
    LEDs_TOG();
}


int main(void) {
    /* Replace with your application code */
    
    TCNT0 = 250;
    //OCR0 = 105;
    init_Timer0(TIMER0_MODE_NORMAL, TIMER0_EXT_CS_RISING_EDGE);
  
    Timer0_INT_ENABLE(TIMER0_INT_TOV);
    
    
    init_LCD4();
    init_LEDs();
    
    LEDs_OFF();
    
    sei();
    while (1) {

        LCD4_clear();
        LCD4_num((TCNT1)>>8);
        _delay_ms(300);

    }
}
