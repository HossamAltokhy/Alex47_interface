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
#include "mTWI.h"
#include "M24C16_TWI.h"

int main(void) {
    /* Replace with your application code */

    init_LCD4();
    _delay_ms(500);


    init_M24CL40();

    M24CL40_CS_Disable();
    _delay_ms(500);

    M24CL40_WREN();
    _delay_ms(500);


    _delay_ms(100);


    M24CL40_write(50, 'A');
    _delay_ms(500);


    while (1) {

        
        LCD4_write(M24CL40_read(50));
        _delay_ms(500);

        







    }
}
