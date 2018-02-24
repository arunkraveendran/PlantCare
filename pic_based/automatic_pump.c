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

#include "automatic_pump.h"

void main()
{
   unsigned int a;
   TRISB = 0xFF;
   TRISC = 0xFF;

   ADC_Init();

   do
   {
     a = ADC_Read(0);
     PORTB = a;
     PORTC = a>>8;
   }while(1);
}