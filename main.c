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
#include "mUART.h"
#include "mSPI.h"
#include "m24CL40.h"

int main(void) {
    /* Replace with your application code */

    DDRA = 0xFF;
    _delay_ms(20);
    init_M24CL40();
    while (1) {


        M24CL40_WREN();
        _delay_ms(20);

        PORTA = M24CL40_READ_STAUTS_REG();

        _delay_ms(500);


    }
}
