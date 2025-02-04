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


// FreeRTOS inclusions..
#include "freertos/include/FreeRTOS.h"
#include "freertos/include/FreeRTOSConfig.h"
#include "freertos/include/task.h"


// Task Function
void task1(void * pVar) {
    while (1) {
//        LCD4_clear();
        LED_TOGGLE(LED0);
        vTaskDelay(1000);
    }
}
// Task Function
void task2(void* pVar) {
    
    vTaskDelay(100);
    while (1) {
//        LCD4_clear();
        LCD4_write('B');
        vTaskDelay(50);
    }
}

int main(void) {
    /* Replace with your application code */
    
    init_LCD4();
    init_LEDs();
  
    xTaskCreate(task1, "T1", 100, NULL, 3, NULL );
    xTaskCreate(task2, "T2", 100, NULL, 3, NULL );
    
    vTaskStartScheduler();
    
    while (1) {

    }
}
