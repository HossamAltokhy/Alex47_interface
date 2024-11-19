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

int main(void) {
    /* Replace with your application code */


    init_BTNS();
    init_LEDs();


    while (1) {

        if (BTNs_isPressed(BTN0)) {
            LED_ON(LED2);
        } else {
            LED_OFF(LED2);
        }



    }
}
