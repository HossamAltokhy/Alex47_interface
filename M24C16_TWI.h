/* 
 * File:   M24C16_TWI.h
 * Author: hossa
 *
 * Created on January 5, 2025, 4:27 PM
 */

#ifndef M24C16_TWI_H
#define	M24C16_TWI_H

#define M24C16_ADDRESS_W 0xA0
#define M24C16_ADDRESS_R 0xA1

void init_M24C16_TWI();
char M24C16_TWI_Write(char address, char data);
char M24C16_TWI_Read(char address);

#endif	/* M24C16_TWI_H */

