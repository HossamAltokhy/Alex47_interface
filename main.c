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



int x = 0;

ISR(TIMER0_OVF_vect) {

    static int count = 0;

    count++;

    if (count == 61) {
        
        ADC_SC();
        count = 0;
    }

}


int reading =0;
int lastReading =0;
int main(void) {
    /* Replace with your application code */

    init_LCD4();
    
    init_ADC(ADC_CH1, ADC_REF_AVCC,ADC_PRE_128);
    
    init_Timer0(TIMER0_MODE_NORMAL, TIMER0_CS_PRE_1024);
    
    // Enable Indiviual Interrupt for Timer0
    Timer0_INT_ENABLE(TIMER0_INT_TOV);
   

    // Enable Global Interrupt Enable
    sei();

    while (1) {

        reading = ADC_read();
        if(lastReading != reading){
            LCD4_clear();
            LCD4_num(reading);
            lastReading = reading;
        }
        
       
        


    }
}
