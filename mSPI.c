#define F_CPU 16000000UL
#include <util/delay.h>

#include <avr/io.h>
#include "mSPI.h"
#include "DIO_Interface.h"


void init_SPI(char SPI_MODE, char DATA_ORDER, char SPI_SPEED){
    
    SPCR |= (DATA_ORDER << DORD);
    
    switch(SPI_MODE){
        case SPI_MODE_MASTER:
            SPCR |= (1 << MSTR);
            SPCR |= SPI_SPEED;
            
            DIO_Set_PIN_DIR(&PORTB, MOSI, OUTPUT);
            DIO_Set_PIN_DIR(&PORTB, SCK, OUTPUT);
            DIO_Set_PIN_DIR(&PORTB, SS, OUTPUT);
            break;
        case SPI_MODE_SLAVE:
            SPCR &= ~(1<<MSTR);
            DIO_Set_PIN_DIR(&PORTB, MISO, OUTPUT);
            break;
    }
    
    _delay_ms(50);
//    SPCR |= (1<<CPOL);
    // Enable SPI
    SPCR |= (1<<SPE);
    
    
}

void SPI_MASTER_WRITE(char data){
    SPDR = data;
    // wait till flag rises
//    while(!(SPSR & (1<<SPIF)));
    
}
char SPI_MASTER_READ(){
    // wait till flag rises
    while(!(SPSR & (1<<SPIF)));
    // You can read data register now!
    return SPDR;
}

void SPI_SLAVE_PREPARE(char data){
    SPDR = data;
}
char SPI_SLAVE_READ(){
    // wait till flag rises
    while(!(SPSR & (1<<SPIF)));
    // You can read data register now!
    return SPDR;
}

