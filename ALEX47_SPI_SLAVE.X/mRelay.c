#include <avr/io.h>
#include "mRelay.h"
#include "DIO_Interface.h"



void init_Relay(){
    DIO_Set_PIN_DIR(Relay_PORT, Relay, OUTPUT);
}
void Relay_ON(){
    DIO_Set_PIN_VALUE(Relay_PORT, Relay, HIGH);
}
void Relay_OFF(){
    DIO_Set_PIN_VALUE(Relay_PORT, Relay, LOW);
}
