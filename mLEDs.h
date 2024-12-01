/* 
 * File:   mLEDs.h
 * Author: hossa
 *
 * Created on November 19, 2024, 2:45 PM
 */

#ifndef MLEDS_H
#define	MLEDS_H

#include <avr/io.h>

#define LED0  PC2
#define LED1  PC7
#define LED2  PD3


#define LED0_PORT  &PORTC
#define LED1_PORT  &PORTC
#define LED2_PORT  &PORTD




void init_LEDs();

// All LEDs
void LEDs_ON();
void LEDs_OFF();


// Specific LED
void LED_ON(char LED);
void LED_OFF(char LED);

void LED_TOGGLE(char LED);

#endif	/* MLEDS_H */

