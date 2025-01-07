/* 
 * File:   m24CL40.h
 * Author: hossa
 *
 * Created on December 31, 2024, 4:24 PM
 */

#ifndef M24CL40_H
#define	M24CL40_H


#define M24CL40_CODE_WREN   0x06
#define M24CL40_CODE_WRDI   0x04
#define M24CL40_CODE_RDSR   0x05
#define M24CL40_CODE_WRSR   0x01
#define M24CL40_CODE_WRITE  0x02
#define M24CL40_CODE_READ   0x03

void init_M24CL40();
void M24CL40_write(char address, char data);
char M24CL40_read(char address);

void M24CL40_WREN();
char M24CL40_READ_STAUTS_REG();

void M24CL40_CS_Enable();
void M24CL40_CS_Disable();
#endif	/* M24CL40_H */

