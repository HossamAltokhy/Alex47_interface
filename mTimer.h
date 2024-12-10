/* 
 * File:   mTimer.h
 * Author: hossa
 *
 * Created on December 10, 2024, 4:06 PM
 */

#ifndef MTIMER_H
#define	MTIMER_H


// Timer Modes
#define TIMER0_MODE_NORMAL   0
#define TIMER0_MODE_PWM      1
#define TIMER0_MODE_CTC      2
#define TIMER0_MODE_FPWM     3
// Clock Source
#define TIMER0_CS_STOP       0
#define TIMER0_CS_NO_PRE     1
#define TIMER0_CS_PRE_8      2
#define TIMER0_CS_PRE_64     3
#define TIMER0_CS_PRE_256    4
#define TIMER0_CS_PRE_1024   5
#define TIMER0_EXT_CS_FALLING_EDGE   6
#define TIMER0_EXT_CS_RISING_EDGE    7
// Enable Individual Interrupts
#define TIMER0_INT_TOV               0
#define TIMER0_INT_OCF               1
// Mode , Clock Source
void init_Timer0(char TIMER_MODE, char TIMER_CLOCK_SOURCE);
void Timer0_INT_ENABLE(char TIMER_INT);
void Timer0_SET_COMP_VAL(char TIMER_COMP_VAL);

#endif	/* MTIMER_H */

