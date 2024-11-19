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

int main(void) {
    /* Replace with your application code */


    init_7Seg();
    init_BTNS();
    int num = 99;

    int counter = 0;
    while (1) {
//        if (BTNs_isPressed(BTN0)) {
//            num++;
//            _delay_ms(200);
//        }

        counter++;
        
        if(counter == 100){
            num--;
            counter = 0;
        }
        
        _7Seg_write_num(num);
        

    }
}
