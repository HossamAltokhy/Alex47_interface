/* 
 * File:   mRelay.h
 * Author: hossa
 *
 * Created on November 19, 2024, 4:04 PM
 */

#ifndef MRELAY_H
#define	MRELAY_H


#define Relay PA2
#define Relay_PORT &PORTA

void init_Relay();
void Relay_ON();
void Relay_OFF();

#endif	/* MRELAY_H */
