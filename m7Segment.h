/* 
 * File:   m7Segment.h
 * Author: hossa
 *
 * Created on November 19, 2024, 5:19 PM
 */

#ifndef M7SEGMENT_H
#define	M7SEGMENT_H


#define _7Seg_A     PA4
#define _7Seg_B     PA5
#define _7Seg_C     PA6
#define _7Seg_D     PA7

#define _7Seg_PINS_PORT   &PORTA
#define _7Seg_CONTS_PORT  &PORTB

#define _7Seg_DP    PB3

#define _7Seg_EN1   PB1
#define _7Seg_EN2   PB2

void init_7Seg();

void m7Seg1_write(char num);
void m7Seg2_write(char num);

void m7Seg_EN1(char state);
void m7Seg_EN2(char state);
void _7Seg_write_num(char num);

#endif	/* M7SEGMENT_H */

