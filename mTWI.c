#include <avr/io.h>
#include "mTWI.h"
#define F_CPU 16000000UL
#include <util/delay.h>

void init_TWI(char Device_Address) {

    TWBR = 72;
    TWAR = Device_Address;

}

void TWI_Master_Transmit(char data) {
    // Start Condition
    TWCR = (1 << TWINT) | (1 << TWSTA) | (1 << TWEN);

    while (!(TWCR & (1 << TWINT)));

    if ((TWSR & 0xF8) != 0x08)
        return 1;
    // SLA+W
    TWDR = SLA_W;
    TWCR = (1 << TWINT) | (1 << TWEN);

    while (!(TWCR & (1 << TWINT)));

    if ((TWSR & 0xF8) != 0x18 && (TWSR & 0xF8) != 0x20)
        return 1;

    // Send Data
    TWDR = data;
    TWCR = (1 << TWINT) | (1 << TWEN);


    while (!(TWCR & (1 << TWINT)));

    if ((TWSR & 0xF8) != 0x28 && (TWSR & 0xF8) != 0x30)
        return 1;

    // Stop Condition
    TWCR = (1 << TWINT) | (1 << TWSTO) | (1 << TWEN);

}
char TWI_Master_Receive(){
    
    char data = 0;
    // Start Condition
    TWCR = (1<<TWINT)|(1<<TWSTA)|(1<<TWEN);
    while(!(TWCR & (1<<TWINT)));
    
    if((TWSR & 0xF8) != 0x08)
        return 0;
    
    // SLA+R
    TWDR = SLA_R;
    TWCR = (1<<TWINT)|(1<<TWEN);
    while(!(TWCR & (1<<TWINT)));
    
    if((TWSR & 0xF8) != 0x40)
        return 0;
    // RECEIVE DATA, then sends ACK
    TWCR = (1<<TWINT)|(1<<TWEA)|(1<<TWEN);
    while(!(TWCR & (1<<TWINT)));
    if((TWSR & 0xF8) == 0x50)
        data = TWDR;
    //  Stop Condition
    TWCR = (1 << TWINT) | (1 << TWSTO) | (1 << TWEN);
    
    return data;
}
void TWI_Slave_Transmit(char data){
    TWCR = (1 << TWINT) | (1 << TWEA) | (1 << TWEN);
    while (!(TWCR & (1 << TWINT)));
    if ((TWSR & 0xF8) == 0xA8){
        TWDR = data;
        TWCR = (1 << TWINT)| (1 << TWEN);
        
        while (!(TWCR & (1 << TWINT)));
        if ((TWSR & 0xF8) == 0xB8){
            
        }
    }
}

char TWI_Slave_Receive() {


    TWCR = (1 << TWINT) | (1 << TWEA) | (1 << TWEN);
    while (!(TWCR & (1 << TWINT)));
    if ((TWSR & 0xF8) == 0x60) {
        TWCR = (1 << TWINT) | (1 << TWEA) | (1 << TWEN);
        while (!(TWCR & (1 << TWINT)));
        if ((TWSR & 0xF8) == 0x80){
            return TWDR;
        }
    }
    
    else{
        return -1;
    }


}
