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
#include "EEPROM.h"





int main(void) {
    /* Replace with your application code */

    init_LEDs();
    init_BTNS();
    
    LEDs_OFF();
    
//    EEPROM_write(0x09, 2);
    _delay_ms(500);
    int index = EEPROM_read(0x09);


    while (1) {

        if(BTNs_isPressed(BTN0)){
            _delay_ms(500);
            index++;
            EEPROM_write(0x09, index);
        }
        
        switch(index){
            case 0:
                LED_ON(LED0);
                LED_OFF(LED1);
                LED_OFF(LED2);
                break;
            case 1:
                LED_ON(LED1);
                LED_OFF(LED0);
                LED_OFF(LED2);
                break;
            case 2:
                LED_ON(LED2);
                LED_OFF(LED1);
                LED_OFF(LED0);
                break;
        }
        







    }
}
