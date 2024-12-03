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


int main(void) {
    /* Replace with your application code */
    char str0[] = "mV (CH0)";
    char str1[] = "mV (CH1)";
    init_LCD4();
    init_ADC(ADC_CH0, ADC_REF_AVCC, ADC_PRE_128);
    
    while (1) {

       ADC_select_CH(ADC_CH0);
       ADC_SC();
       LCD4_clear();
       LCD4_num(ADC_read());
       LCD4_str(str0);
       _delay_ms(500);
       
       ADC_select_CH(ADC_CH1);
       ADC_SC();
       LCD4_clear();
       LCD4_num(ADC_read());
       LCD4_str(str1);
       _delay_ms(500);

    }
}

