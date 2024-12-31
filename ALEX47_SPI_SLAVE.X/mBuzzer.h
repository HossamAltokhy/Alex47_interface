/* 
 * File:   mBuzzer.h
 * Author: hossa
 *
 * Created on November 19, 2024, 4:04 PM
 */

#ifndef MBUZZER_H
#define	MBUZZER_H

#define Buzzer PA3
#define Buzzer_PORT &PORTA

void init_Buzzer();
void Buzzer_ON();
void Buzzer_OFF();
void Buzzer_Play();
void Buzzer_PlayTone();
#endif	/* MBUZZER_H */

