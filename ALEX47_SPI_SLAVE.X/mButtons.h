/* 
 * File:   mButtons.h
 * Author: hossa
 *
 * Created on November 19, 2024, 3:27 PM
 */

#ifndef MBUTTONS_H
#define	MBUTTONS_H


#define BTN0    PB0
#define BTN1    PD6
#define BTN2    PD2

#define BTN0_PORT    &PORTB
#define BTN1_PORT    &PORTD
#define BTN2_PORT    &PORTD

void init_BTNS();

char BTNs_isPressed(char BTN);

#endif	/* MBUTTONS_H */

