/* 
 * File:   EXT_INT.h
 * Author: hossa
 *
 * Created on December 1, 2024, 4:39 PM
 */

#ifndef EXT_INT_H
#define	EXT_INT_H

#define INTERRUPT_0     0
#define INTERRUPT_1     1
#define INTERRUPT_2     2


#define INT_RISING_EDGE       3
#define INT_FALLING_EDGE      2
#define INT_ANY_LOGIC_CHANGE  1
#define INT_LOW_LEVEL         0

#define INT2_RISING_EDGE       1
#define INT2_FALLING_EDGE      0




void init_INT(int INT_num, int INT_mode);
void INT_Enable_Global();

#endif	/* EXT_INT_H */

