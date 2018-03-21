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
#include <htc.h>


void main()
{
	unsigned int a;
	TRISD = 0x00;
   
	
	PORTDbits.RD2 = 1;
	PORTDbits.RD5 = 1;


	PORTDbits.RD3 = 0;
	PORTDbits.RD4 = 0;
	PORTDbits.RD6 = 0;
	PORTDbits.RD7 = 0;

	PORTD = 0;
	while(1)
	{
		PORTDbits.RD1 = 1;
//		for(int i = 0; i < 15000; i++);
//		PORTD = 0;
//		for(int i = 0; i < 15000; i++);


		PORTDbits.RD3 = 0;
		PORTDbits.RD4 = 1;
		
		a = 200;

		while(a--)
		{
			
			for(int i = 0; i < 15000; i++);
		}
		PORTDbits.RD3 = 0;
		PORTDbits.RD4 = 0;
		PORTDbits.RD1 = 0;
		
		PORTDbits.RD6 = 0;
		PORTDbits.RD7 = 1;

		a = 200;

		while(a--)
		{
			
			for(int i = 0; i < 15000; i++);
		}
		PORTDbits.RD6 = 0;
		PORTDbits.RD7 = 0;
   }
}