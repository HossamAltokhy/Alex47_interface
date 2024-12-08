/* 
 * File:   mLCD4.h
 * Author: hossa
 *
 * Created on November 26, 2024, 3:50 PM
 */

#ifndef MLCD4_H
#define	MLCD4_H


#define LCD_DATA_DIR            &DDRC
#define LCD_DATA_PORT           &PORTC

#define LCD_CONTROL_PINS_DIR    &DDRC
#define LCD_CONTROL_PINS_PORT   &PORTC


#define LCD_EN    PC2
#define LCD_RW    PC1
#define LCD_RS    PC0


// APIs
void init_LCD4();

void LCD4_write(char data);
void LCD4_cmd(char cmd);

void LCD4_clear();

void LCD4_Enable();

void LCD4_str(char * arr);

void LCD4_num(int num);
#endif	/* MLCD4_H */

