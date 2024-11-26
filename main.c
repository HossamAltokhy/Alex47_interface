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



char arr[] = "ALEX 47";


int main(void) {
    /* Replace with your application code */


    init_7Seg();
    init_BTNS();
    int num = 99;

    int counter = 0;
    
    init_LCD4();
    
    int temp = 65;
    while (1) {

        
        
        LCD4_num(temp);
        _delay_ms(500);
        LCD4_clear();

    }
}
