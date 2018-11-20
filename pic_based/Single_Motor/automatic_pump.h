#ifdef MODULE_HEADER
//---------------------------------------------------------------------------//
//                    Copy right @ Arun 2018                                 //
//---------------------------------------------------------------------------//
//                                                                           //
// Date         Name                 Description                             //
//---------------------------------------------------------------------------//
// 24Feb18      Arun                 Initial Version                         //
//---------------------------------------------------------------------------//
#endif


#include<pic16f877a.h>
#define _XTAL_FREQ 8000000

void ADC_Init()
{
   ADCON0 = 0x41;
   ADCON1 = 0xC0;
}

unsigned int ADC_Read(unsigned char channel)
{
   if(channel > 7)
   {
       return 0; 
   }
   ADCON0 &= 0xC5;
   ADCON0 |= channel<<3;
   GO_nDONE = 1;
   while(GO_nDONE);
   return ((ADRESH<<8)+ADRESL);
}

