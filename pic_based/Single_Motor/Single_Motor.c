#ifdef MODULE_HEADER
//---------------------------------------------------------------------------//
//                    Copy right @ Arun 2018                                 //
//---------------------------------------------------------------------------//
//                                                                           //
// Date         Name                 Description                             //
//---------------------------------------------------------------------------//
// 24Feb18      Arun                 Initial Version                         //
// 24Mar18      Arun                 Updatd Timing                           //
// 20Nov18      Arun                 Single motor 12V                        //
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
	PORTDbits.RD4 = 1;  // MOTOR OFF
	PORTDbits.RD6 = 0;
	PORTDbits.RD7 = 0;

	PORTD = 0;
	while(1)
	{
		PORTDbits.RD1 = 1;  // LED ON
		
		//MOTOR ON
		PORTDbits.RD4 = 0;  // MOTOR ON
		
		a = 375;  // 15SEC DELAY

		while(a--)
		{
			
			for(int i = 0; i < 15000; i++);
			if (a<=50)
			{
				PORTDbits.RD0 = ~PORTDbits.RD0;
			}
		}

		PORTDbits.RD0 = 0;
		// MOTOR OFF
		PORTDbits.RD4 = 1;  //MOTOR OFF

		// LED OFF
		PORTDbits.RD1 = 0;  // LED OFF

		int b = 1000;
		while(b--)
		{
        	a= 100;
			while(a--)
			{
			
				for(int i = 0; i < 15000; i++);
			}
			PORTDbits.RD1 = ~PORTDbits.RD1;
		}
   }
}