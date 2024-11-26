/* 
 * File:   mLCD8.h
 * Author: hossa
 *
 * Created on November 26, 2024, 2:07 PM
 */

#ifndef MLCD8_H
#define	MLCD8_H

#define LCD_DATA_DIR            &DDRD
#define LCD_DATA_PORT           &PORTD

#define LCD_CONTROL_PINS_DIR    &DDRC
#define LCD_CONTROL_PINS_PORT   &PORTC


#define LCD_EN    PC1
#define LCD_RW    PC5
#define LCD_RS    PC7


// APIs
void init_LCD();

void LCD_write(char data);
void LCD_cmd(char cmd);

void LCD_clear();

void LCD_Enable();

void LCD_str(char * arr);

void LCD_num(int num);
#endif	/* MLCD8_H */

