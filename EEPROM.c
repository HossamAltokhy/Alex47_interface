#include <avr/io.h>


void EEPROM_write(int address, char data){
    while((EECR & (1<<EEWE)));
    // Set Address
    EEARL = (char) address;
    EEARH = (char) (address>>8);
    // Set Data
    EEDR = data;
    
    // Set Master Write Enable
    EECR = (1<<EEMWE);
    
    EECR |= (1<<EEWE);
     
 }

char EEPROM_read(int address){
    while(EECR & (1<<EEWE));
     // Set Address
    EEARL = (char) address;
    EEARH = (char) (address>>8);
    
    EECR |= (1<<EERE);
    
    return EEDR;
    
}
