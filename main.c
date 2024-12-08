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

#define TEMP_SENSOR   ADC_CH0


int data = 0;

ISR(ADC_vect){
    data = ADC_read()/10.0;
    //ADC_SC();
}


int main(void) {
    /* Replace with your application code */
    signed char CHANNEL_ID =0;
    char str0[] = "mV    (CH";
    char str1[] = ")";
    init_LCD4();
    init_BTNS();
    
    
    init_ADC(ADC_CH0, ADC_REF_AVCC, ADC_PRE_128);
    sei();
    
    ADC_SC();
    
    
    
    while (1) {

        
        
        
        
        LCD4_clear();
        LCD4_num(data);
        LCD4_str(str0);
        LCD4_num(ADC_CH0);
        LCD4_str(str1);
        _delay_ms(200);
        

    }
}

