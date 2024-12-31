#include <avr/io.h>
#include "m7Segment.h"
#include "DIO_Interface.h"

#define F_CPU 16000000UL
#include <util/delay.h>

void init_7Seg() {
    DIO_Set_PIN_DIR(_7Seg_PINS_PORT, _7Seg_A, OUTPUT);
    DIO_Set_PIN_DIR(_7Seg_PINS_PORT, _7Seg_B, OUTPUT);
    DIO_Set_PIN_DIR(_7Seg_PINS_PORT, _7Seg_C, OUTPUT);
    DIO_Set_PIN_DIR(_7Seg_PINS_PORT, _7Seg_D, OUTPUT);

    DIO_Set_PIN_DIR(_7Seg_CONTS_PORT, _7Seg_DP, OUTPUT);
    DIO_Set_PIN_DIR(_7Seg_CONTS_PORT, _7Seg_EN1, OUTPUT);
    DIO_Set_PIN_DIR(_7Seg_CONTS_PORT, _7Seg_EN2, OUTPUT);



}
/// xxxxxxxx

void m7Seg1_write(char num) {
    m7Seg_EN1(ON);
    *_7Seg_PINS_PORT &= 0x0F;
    *_7Seg_PINS_PORT |= (num << 4);
    _delay_ms(5);
    m7Seg_EN1(OFF);
}

void m7Seg2_write(char num) {
    m7Seg_EN2(ON);
    *_7Seg_PINS_PORT &= 0x0F;
    *_7Seg_PINS_PORT |= (num << 4);
    _delay_ms(5);
    m7Seg_EN2(OFF);

}

void m7Seg_EN1(char state) {
    switch (state) {
        case ON:
            DIO_Set_PIN_VALUE(_7Seg_CONTS_PORT, _7Seg_EN1, HIGH);
            break;
        case OFF:
            DIO_Set_PIN_VALUE(_7Seg_CONTS_PORT, _7Seg_EN1, LOW);
            break;
    }
}

void m7Seg_EN2(char state) {
    switch (state) {
        case ON:
            DIO_Set_PIN_VALUE(_7Seg_CONTS_PORT, _7Seg_EN2, HIGH);
            break;
        case OFF:
            DIO_Set_PIN_VALUE(_7Seg_CONTS_PORT, _7Seg_EN2, LOW);
            break;
    }
}

void _7Seg_write_num(char num) {
    
    m7Seg1_write(num%10);
    _delay_ms(2);
    m7Seg2_write(num/10);
    _delay_ms(2);
}