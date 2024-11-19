#include <avr/io.h>
#include "DIO_Interface.h"

void DIO_Set_PORT_DIR(volatile uint8_t *  PORTx, char DIR){
    *(PORTx-1) = DIR;
}
void DIO_Set_PORT_VALUE(volatile uint8_t * PORTx, char Val){
    *PORTx = Val;
}

void DIO_Read_PORT(volatile uint8_t* PORTx, unsigned char* val){
    *val = *(PORTx-2);
}




void DIO_Set_PIN_DIR(volatile uint8_t * PORTx, char PIN, char DIR){
    PORTx--;
    switch(DIR){
        case INPUT:
            *PORTx &= ~(1<<PIN);
            break;
        case OUTPUT:
            *PORTx |= (1<<PIN);
            break;
        
    }
}


void DIO_Set_PIN_VALUE(volatile uint8_t* PORTx,char PIN, char Val){
    
    switch(Val){
        case HIGH:
            *PORTx |= (1<<PIN);
            break;
        case LOW:
            *PORTx &= ~(1<<PIN);
            break;
    }
    
    
    
}


void DIO_Read_PIN(volatile uint8_t * PORTx, char PIN, char*val){
    
    
    
    PORTx-=2;
    
    if(*PORTx & (1<<PIN)){
        *val = 1;
    }
    else{
        *val = 0;
    }
    
    *val = (*PORTx & (1<<PIN))? HIGH:LOW;

}


void DIO_Toggle_PIN(volatile uint8_t* PORTx, char PIN){
    
    *PORTx ^= (1<<PIN);
    
}
