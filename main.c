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



int num = 0;

ISR(INT0_vect) {

    num++;
    LCD4_clear();
    LCD4_num(num);

}
char str[] = "Hello";
int main(void) {
    /* Replace with your application code */

    init_LEDs();
    init_BTNS();
    init_LCD4();


    LCD4_str(str);

    init_INT(INTERRUPT_0, INT_RISING_EDGE);
    INT_Enable_Global();

    while (1) {

        if (BTNs_isPressed(BTN0)) {
            num++;
            LCD4_clear();
            LCD4_num(num);
            _delay_ms(500);
        }



    }
}

