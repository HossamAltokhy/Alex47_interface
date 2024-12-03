/* 
 * File:   mADC.h
 * Author: hossa
 *
 * Created on December 3, 2024, 3:44 PM
 */

#ifndef MADC_H
#define	MADC_H

void init_ADC();
void ADC_select_CH(int ADC_CH);
void ADC_select_REF(int ADC_REF);
void ADC_EN();
void ADC_select_FREQ(int ADC_FREQ);
void ADC_SC();
int  ADC_read();


#endif	/* MADC_H */

