#include <avr/io.h>
#define F_CPU 16000000UL

#include <util/delay.h>
#include "mTWI.h"
#include "M24C16_TWI.h"

void init_M24C16_TWI() {
    init_TWI(DEV_ADDRESS);
}

char M24C16_TWI_Write(char address, char data) {
    // Start Condition
    TWCR = (1 << TWINT) | (1 << TWSTA) | (1 << TWEN);

    while (!(TWCR & (1 << TWINT)));

    if ((TWSR & 0xF8) != 0x08)
        return 1;
    // SLA+W
    TWDR = M24C16_ADDRESS_W;
    TWCR = (1 << TWINT) | (1 << TWEN);

    while (!(TWCR & (1 << TWINT)));

    if ((TWSR & 0xF8) != 0x18 && (TWSR & 0xF8) != 0x20)
        return 1;

    // Send ADDRESS
    TWDR = address;
    TWCR = (1 << TWINT) | (1 << TWEN);


    while (!(TWCR & (1 << TWINT)));

    if ((TWSR & 0xF8) != 0x28 && (TWSR & 0xF8) != 0x30)
        return 1;

    // Send Data
    TWDR = data;
    TWCR = (1 << TWINT) | (1 << TWEN);


    while (!(TWCR & (1 << TWINT)));

    if ((TWSR & 0xF8) != 0x28 && (TWSR & 0xF8) != 0x30)
        return 1;

    // Stop Condition
    TWCR = (1 << TWINT) | (1 << TWSTO) | (1 << TWEN);
    
    
    return 0;

}

char M24C16_TWI_Read(char address) {

    char data = 0;
    // Start Condition
    TWCR = (1 << TWINT) | (1 << TWSTA) | (1 << TWEN);

    while (!(TWCR & (1 << TWINT)));

    if ((TWSR & 0xF8) != 0x08)
        return 1;
    // SLA+W
    TWDR = M24C16_ADDRESS_W;
    TWCR = (1 << TWINT) | (1 << TWEN);

    while (!(TWCR & (1 << TWINT)));

    if ((TWSR & 0xF8) != 0x18 && (TWSR & 0xF8) != 0x20)
        return 1;

    // Send Address
    TWDR = address;
    TWCR = (1 << TWINT) | (1 << TWEN);


    while (!(TWCR & (1 << TWINT)));

    if ((TWSR & 0xF8) != 0x28 && (TWSR & 0xF8) != 0x30)
        return 1;

    // Repeated Start
    TWCR = (1 << TWINT) | (1 << TWSTA) | (1 << TWEN);
    while (!(TWCR & (1 << TWINT)));
    if ((TWSR & 0xF8) == 0x10) {
        TWDR = M24C16_ADDRESS_R;
        TWCR = (1 << TWINT) | (1 << TWEN);
        while (!(TWCR & (1 << TWINT)));
        if ((TWSR & 0xF8) == 0x40) {
            TWCR = (1 << TWINT) | (1 << TWEA) | (1 << TWEN);
            while (!(TWCR & (1 << TWINT)));
            if ((TWSR & 0xF8) == 0x50) {
                data = TWDR;
                // Stop Condition
                TWCR = (1 << TWINT) | (1 << TWSTO) | (1 << TWEN);
            }


        }
    }


    return data;
}