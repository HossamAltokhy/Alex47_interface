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






int main(void) {
    /* Replace with your application code */
    init_LCD4();
    char data = 'B';
    init_SPI(SPI_MODE_SLAVE, DATA_ORDER_MSB, SPI_SPEED_NONE);
    
 
    while (1) {
        SPI_SLAVE_PREPARE(data+1);
        
        data = SPI_SLAVE_READ();
        
        LCD4_clear();
        LCD4_write(data);
        
//        _delay_ms(50);
        
       
        
        

    }
}
