/* 
 * File:   mSPI.h
 * Author: hossa
 *
 * Created on December 31, 2024, 2:28 PM
 */

#ifndef MSPI_H
#define	MSPI_H


#define SPI_MODE_MASTER    1
#define SPI_MODE_SLAVE     0

#define DATA_ORDER_LSB     1
#define DATA_ORDER_MSB     0



#define SPI_SPEED_NONE     0

#define SPI_SPEED_PRE_4    0
#define SPI_SPEED_PRE_16   1
#define SPI_SPEED_PRE_64   2
#define SPI_SPEED_PRE_128  3


#define MOSI    PB5
#define MISO    PB6
#define SCK     PB7
#define SS      PB4

void init_SPI(char SPI_MODE, char DATA_ORDER, char SPI_SPEED);

void SPI_MASTER_WRITE(char data);
char SPI_MASTER_READ();

void SPI_SLAVE_PREPARE(char data);
char SPI_SLAVE_READ();


#endif	/* MSPI_H */

