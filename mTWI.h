/* 
 * File:   mTWI.h
 * Author: hossa
 *
 * Created on January 5, 2025, 2:49 PM
 */

#ifndef MTWI_H
#define	MTWI_H

#define DEV_ADDRESS  0x06

// SLAVE ADDRESS  0x70
#define SLA_W     0x70      
#define SLA_R     0x71

void init_TWI(char Device_Address);
char TWI_Master_Transmit(char data);
char TWI_Master_Receive();
void TWI_Slave_Transmit(char data);
char TWI_Slave_Receive();

#endif	/* MTWI_H */

