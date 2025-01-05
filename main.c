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
    _delay_ms(50);
    init_M24C16_TWI();
    
    _delay_ms(500);
    while (1) {


        M24C16_TWI_Write(0x70, 'A');
        _delay_ms(1000);
        
        LCD4_write(M24C16_TWI_Read(0x70));


    }
}
