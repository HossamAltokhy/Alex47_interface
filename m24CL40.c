#define F_CPU 16000000UL
#include <util/delay.h>
#include <avr/io.h>

#include "m24CL40.h"
#include "mSPI.h"
#include "DIO_Interface.h"

void init_M24CL40() {
    init_SPI(SPI_MODE_MASTER, DATA_ORDER_MSB, SPI_SPEED_PRE_128);
    _delay_ms(50);

    M24CL40_CS_Disable();
    _delay_ms(500);





}

void M24CL40_write(char address, char data) {
    M24CL40_CS_Enable();
    SPI_MASTER_WRITE(M24CL40_CODE_WRITE);
    while(!(SPSR & (1<<SPIF)));
    SPI_MASTER_WRITE(address);
    while(!(SPSR & (1<<SPIF)));
    SPI_MASTER_WRITE(data);
    while(!(SPSR & (1<<SPIF)));
    M24CL40_CS_Disable();
}

char M24CL40_read(char address) {
    char data =0;
    M24CL40_CS_Enable();
    SPI_MASTER_WRITE(M24CL40_CODE_READ);
    while(!(SPSR & (1<<SPIF)));
    SPI_MASTER_WRITE(address);
    while(!(SPSR & (1<<SPIF)));
    SPI_MASTER_WRITE(0x00);
    while(!(SPSR & (1<<SPIF)));
    data = SPDR;
    M24CL40_CS_Disable();
    return data;
}

void M24CL40_WREN() {
    M24CL40_CS_Enable();
    SPI_MASTER_WRITE(M24CL40_CODE_WREN);
    while(!(SPSR & (1<<SPIF)));
    M24CL40_CS_Disable();
}

char M24CL40_READ_STAUTS_REG() {
    char data =0;
    M24CL40_CS_Enable();
    SPI_MASTER_WRITE(M24CL40_CODE_RDSR);
    while(!(SPSR & (1<<SPIF)));
    SPI_MASTER_WRITE(0x00);
    while(!(SPSR & (1<<SPIF)));
    data = SPDR;
    M24CL40_CS_Disable();
    return data;
}

void M24CL40_CS_Enable() {
    DIO_Set_PIN_VALUE(&PORTB, SS, LOW);
//    _delay_us(5);
}

void M24CL40_CS_Disable() {

    DIO_Set_PIN_VALUE(&PORTB, SS, HIGH);
//    _delay_us(5);
}