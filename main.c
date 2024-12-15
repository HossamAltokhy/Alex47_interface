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


ISR(TIMER2_COMP_vect){
    
}


int reading =0;
int lastReading =0;
int main(void) {
    /* Replace with your application code */


    init_BTNS();
    
    // Timer0 initialization 
    init_Timer2(TIMER0_MODE_PWM, TIMER0_CS_PRE_1024);
    
    Timer2_SET_COMP_VAL(200);
    // Select Compare match mode
    Timer2_COMP_MODE(TIMER0_COMP_MODE_PWM_SET_ON_COUNT_UP);
    
    // Enable Indiviual Interrupt for Timer0
    Timer2_INT_ENABLE(TIMER0_INT_OCF);
   

    // Enable Global Interrupt Enable
    sei();

    unsigned char compareVal = 100;
    while (1) {

//        if(BTNs_isPressed(BTN1)){
//            compareVal +=10;
//            if(compareVal > 255){
//                compareVal = 255;
//            }
//            Timer2_SET_COMP_VAL(compareVal);
//            _delay_ms(300);
//        }
//        if(BTNs_isPressed(BTN2)){
//            compareVal -=10;
//            if(compareVal < 0){
//                compareVal = 0;
//            }
//            Timer2_SET_COMP_VAL(compareVal);
//            _delay_ms(300);
//        }
        
        
        for(int i = 0 ; i < 20; i++)
        {
            compareVal +=10;
            if(compareVal > 255){
                compareVal = 255;
            }
            Timer2_SET_COMP_VAL(compareVal);
            _delay_ms(300);
            
        }
        
        for(int i = 0 ; i < 20; i++)
        {
            compareVal -=10;
            if(compareVal < 0){
                compareVal = 0;
            }
            Timer2_SET_COMP_VAL(compareVal);
            _delay_ms(300);
            
        }
        


    }
}
