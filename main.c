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
#include "freertos/include/queue.h"




TaskHandle_t Task1_Handler = NULL;
TaskHandle_t Task2_Handler = NULL;

xQueueHandle Queue_Handler = NULL;


//char str1[] = "Task 1 is running \r";
//char str2[] = "Task 2 is running \r";

// Task Function

void task1(void * pVar) {


    int x = 0;
    portBASE_TYPE result;
    //    char* str = (char *)pVar;
    while (1) {

        x++;
        result = xQueueSendToBack(Queue_Handler, (void *) &x, 5);
        if (result == errQUEUE_FULL) {
            x--;
        }
        vTaskDelay(500);
    }

    vTaskDelete(NULL);
}

// Task Function

void task2(void* pVar) {

    int x = 0;
    portBASE_TYPE result;
    vTaskDelay(100);
    while (1) {

        result = xQueueReceive(Queue_Handler, &x, 5);

        if (result == pdPASS) {
            LCD4_clear();
            LCD4_num(x);
        }

        vTaskDelay(500);

    }

    vTaskDelete(NULL);
}

int main(void) {
    /* Replace with your application code */

    init_LCD4();
    //    init_LEDs();
    //    init_UART(9600);

    Queue_Handler = xQueueCreate(4, sizeof (int));

    xTaskCreate(task1, "T1", 100, (void*) NULL, 3, &Task1_Handler);
    xTaskCreate(task2, "T2", 100, (void*) NULL, 3, &Task2_Handler);

    vTaskStartScheduler();

    while (1) {

        //        UART_send('A');
        //        _delay_ms(500);
    }
}
