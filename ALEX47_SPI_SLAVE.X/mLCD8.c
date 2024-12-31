#include <avr/io.h>
#define F_CPU 16000000UL
#include <util/delay.h>

#include "DIO_Interface.h"
#include "mLCD8.h"
#include <stdlib.h>
#include <string.h>

void init_LCD() {

    // Data Directions for all LCD PINs
    DIO_Set_PORT_DIR(LCD_DATA_PORT, OUTPUT_PORT);
    DIO_Set_PIN_DIR(LCD_CONTROL_PINS_PORT, LCD_EN, OUTPUT);
    DIO_Set_PIN_DIR(LCD_CONTROL_PINS_PORT, LCD_RS, OUTPUT);
    DIO_Set_PIN_DIR(LCD_CONTROL_PINS_PORT, LCD_RW, OUTPUT);


    // Command to setup LCD
    // According to LCD Data Sheet
    _delay_ms(10);
    LCD_cmd(0x38);
    LCD_cmd(0x06);
    LCD_cmd(0x0C);
    _delay_ms(10);

}

void LCD_write(char data) {

    // Select Data Register
    DIO_Set_PIN_VALUE(LCD_CONTROL_PINS_PORT, LCD_RS, HIGH);

    DIO_Set_PORT_VALUE(LCD_DATA_PORT, data);

    LCD_Enable();
}

void LCD_cmd(char cmd) {
    // Select Instruction Register
    DIO_Set_PIN_VALUE(LCD_CONTROL_PINS_PORT, LCD_RS, LOW);

    DIO_Set_PORT_VALUE(LCD_DATA_PORT, cmd);

    LCD_Enable();
}

void LCD_clear() {
    LCD_cmd(0x01);
}

void LCD_Enable() {
    DIO_Set_PIN_VALUE(LCD_CONTROL_PINS_PORT, LCD_EN, HIGH);
    _delay_us(50);
    DIO_Set_PIN_VALUE(LCD_CONTROL_PINS_PORT, LCD_EN, LOW);
}

void LCD_str(char * arr) {
    for (int i = 0; arr[i] != '\0'; i++) {
        LCD_write(arr[i]);
    }
}

void LCD_num(int num){
    // Convert Num to a string
    char str[11];
    
    itoa(num, str, 10);
    
    LCD_str(str);
}