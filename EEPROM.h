/* 
 * File:   EEPROM.h
 * Author: hossa
 *
 * Created on February 4, 2025, 3:38 PM
 */

#ifndef EEPROM_H
#define	EEPROM_H

void EEPROM_write(int address, char data);
char EEPROM_read(int address);

#endif	/* EEPROM_H */

