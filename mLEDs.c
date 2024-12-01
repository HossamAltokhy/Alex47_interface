


#include "DIO_Interface.h"
#include <avr/io.h>
#include "mLEDs.h"

void init_LEDs(){
    DIO_Set_PIN_DIR(LED0_PORT,LED0,OUTPUT);
    DIO_Set_PIN_DIR(LED1_PORT,LED1,OUTPUT);
    DIO_Set_PIN_DIR(LED2_PORT,LED2,OUTPUT);
}

// All Leds
void LEDs_ON(){
    DIO_Set_PIN_VALUE(LED0_PORT, LED0, HIGH);
    DIO_Set_PIN_VALUE(LED1_PORT, LED1, HIGH);
    DIO_Set_PIN_VALUE(LED2_PORT, LED2, HIGH);
}
void LEDs_OFF(){
    DIO_Set_PIN_VALUE(LED0_PORT, LED0, LOW);
    DIO_Set_PIN_VALUE(LED1_PORT, LED1, LOW);
    DIO_Set_PIN_VALUE(LED2_PORT, LED2, LOW);

}
void LED_ON(char LED){
    switch(LED){
        case LED0:
            DIO_Set_PIN_VALUE(LED0_PORT, LED0, HIGH);
            break;
        case LED1:
            DIO_Set_PIN_VALUE(LED1_PORT, LED1, HIGH);
            break;
        case LED2:
            DIO_Set_PIN_VALUE(LED2_PORT, LED2, HIGH);
            break;
    }
    
    
}
void LED_OFF(char LED){
    switch(LED){
        case LED0:
            DIO_Set_PIN_VALUE(LED0_PORT, LED0, LOW);
            break;
        case LED1:
            DIO_Set_PIN_VALUE(LED1_PORT, LED1, LOW);
            break;
        case LED2:
            DIO_Set_PIN_VALUE(LED2_PORT, LED2, LOW);
            break;
    }
}

void LED_TOGGLE(char LED){
    switch(LED){
        case LED0:
            DIO_Toggle_PIN(LED0_PORT, LED0);
            break;
        case LED1:
            DIO_Toggle_PIN(LED1_PORT, LED1);
            break;
        case LED2:
            DIO_Toggle_PIN(LED2_PORT, LED2);
            break;
    }
}


