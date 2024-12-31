#define F_CPU 16000000UL
#include <util/delay.h>
#include <avr/io.h>

#include "m24CL40.h"
#include "mSPI.h"
#include "DIO_Interface.h"


void init_M24CL40(){
    init_SPI(SPI_MODE_MASTER, DATA_ORDER_MSB, SPI_SPEED_PRE_128);
    
    
    
    
    
    
}
void M24CL40_write(char address, char data);
char M24CL40_read(char address);

void M24CL40_WREN(){
    M24CL40_CS_Enable();
    SPI_MASTER_WRITE(M24CL40_CODE_WREN);
    M24CL40_CS_Disable();
}
char M24CL40_READ_STAUTS_REG(){
    M24CL40_CS_Enable();
    SPI_MASTER_WRITE(M24CL40_CODE_WRSR);
    SPI_MASTER_WRITE(0x00);
    M24CL40_CS_Disable();
    return SPDR;
}

void M24CL40_CS_Enable(){
    DIO_Set_PIN_VALUE(&PORTB, SS, LOW);
}
void M24CL40_CS_Disable(){
    DIO_Set_PIN_VALUE(&PORTB, SS, HIGH);
}