opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 10920"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_ADC_Read
	FNROOT	_main
	global	_ADCON0
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_GO_nDONE
_GO_nDONE	set	250
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	file	"automatic_water_pump.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_ADC_Init
?_ADC_Init:	; 0 bytes @ 0x0
	global	??_ADC_Init
??_ADC_Init:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ADC_Read
?_ADC_Read:	; 2 bytes @ 0x0
	ds	2
	global	??_ADC_Read
??_ADC_Read:	; 0 bytes @ 0x2
	ds	2
	global	ADC_Read@channel
ADC_Read@channel:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
	global	main@a
main@a:	; 2 bytes @ 0x5
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_ADC_Read	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_ADC_Read
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0      60
;;                                              5 COMMON     2     2      0
;;                           _ADC_Init
;;                           _ADC_Read
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Read                                             5     3      2      30
;;                                              0 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (1) _ADC_Init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _ADC_Init
;;   _ADC_Read
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       7       1       50.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "D:\Work\Auto_Watering\PlantCare\pic_based\automatic_pump.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  a               2    5[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_ADC_Init
;;		_ADC_Read
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Work\Auto_Watering\PlantCare\pic_based\automatic_pump.c"
	line	15
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	17
	
l2618:	
;automatic_pump.c: 16: unsigned int a;
;automatic_pump.c: 17: TRISB = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	18
;automatic_pump.c: 18: TRISC = 0xFF;
	movlw	(0FFh)
	movwf	(135)^080h	;volatile
	line	20
	
l2620:	
;automatic_pump.c: 20: ADC_Init();
	fcall	_ADC_Init
	goto	l2622
	line	22
;automatic_pump.c: 22: do
	
l695:	
	line	24
	
l2622:	
;automatic_pump.c: 23: {
;automatic_pump.c: 24: a = ADC_Read(0);
	movlw	(0)
	fcall	_ADC_Read
	movf	(1+(?_ADC_Read)),w
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	(0+(?_ADC_Read)),w
	clrf	(main@a)
	addwf	(main@a)

	line	25
	
l2624:	
;automatic_pump.c: 25: PORTB = a;
	movf	(main@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	26
	
l2626:	
;automatic_pump.c: 26: PORTC = a>>8;
	movf	(main@a+1),w
	movwf	(7)	;volatile
	line	27
;automatic_pump.c: 27: }while(1);
	goto	l2622
	
l696:	
	line	28
	
l697:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_ADC_Read
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:

;; *************** function _ADC_Read *****************
;; Defined at:
;;		line 23 in file "D:\Work\Auto_Watering\PlantCare\pic_based\automatic_pump.h"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text89
	file	"D:\Work\Auto_Watering\PlantCare\pic_based\automatic_pump.h"
	line	23
	global	__size_of_ADC_Read
	__size_of_ADC_Read	equ	__end_of_ADC_Read-_ADC_Read
	
_ADC_Read:	
	opt	stack 7
; Regs used in _ADC_Read: [wreg+status,2+status,0+btemp+1]
;ADC_Read@channel stored from wreg
	movwf	(ADC_Read@channel)
	line	24
	
l1746:	
;automatic_pump.h: 24: if(channel > 7)
	movlw	(08h)
	subwf	(ADC_Read@channel),w
	skipc
	goto	u11
	goto	u10
u11:
	goto	l1752
u10:
	line	26
	
l1748:	
;automatic_pump.h: 25: {
;automatic_pump.h: 26: return 0;
	clrf	(?_ADC_Read)
	clrf	(?_ADC_Read+1)
	goto	l689
	
l1750:	
	goto	l689
	line	27
	
l688:	
	line	28
	
l1752:	
;automatic_pump.h: 27: }
;automatic_pump.h: 28: ADCON0 &= 0xC5;
	movlw	(0C5h)
	movwf	(??_ADC_Read+0)+0
	movf	(??_ADC_Read+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	line	29
;automatic_pump.h: 29: ADCON0 |= channel<<3;
	movf	(ADC_Read@channel),w
	movwf	(??_ADC_Read+0)+0
	movlw	(03h)-1
u25:
	clrc
	rlf	(??_ADC_Read+0)+0,f
	addlw	-1
	skipz
	goto	u25
	clrc
	rlf	(??_ADC_Read+0)+0,w
	movwf	(??_ADC_Read+1)+0
	movf	(??_ADC_Read+1)+0,w
	iorwf	(31),f	;volatile
	line	30
	
l1754:	
;automatic_pump.h: 30: GO_nDONE = 1;
	bsf	(250/8),(250)&7
	line	31
;automatic_pump.h: 31: while(GO_nDONE);
	goto	l690
	
l691:	
	
l690:	
	btfsc	(250/8),(250)&7
	goto	u31
	goto	u30
u31:
	goto	l690
u30:
	goto	l1756
	
l692:	
	line	32
	
l1756:	
;automatic_pump.h: 32: return ((ADRESH<<8)+ADRESL);
	movf	(30),w	;volatile
	movwf	(??_ADC_Read+0)+0
	clrf	(??_ADC_Read+0)+0+1
	movf	(??_ADC_Read+0)+0,w
	movwf	(??_ADC_Read+0)+1
	clrf	(??_ADC_Read+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	0+(??_ADC_Read+0)+0,w
	movwf	(?_ADC_Read)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_ADC_Read+0)+0,w
	movwf	1+(?_ADC_Read)
	goto	l689
	
l1758:	
	line	33
	
l689:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Read
	__end_of_ADC_Read:
;; =============== function _ADC_Read ends ============

	signat	_ADC_Read,4218
	global	_ADC_Init
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 17 in file "D:\Work\Auto_Watering\PlantCare\pic_based\automatic_pump.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text90
	file	"D:\Work\Auto_Watering\PlantCare\pic_based\automatic_pump.h"
	line	17
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:	
	opt	stack 7
; Regs used in _ADC_Init: [wreg]
	line	18
	
l1744:	
;automatic_pump.h: 18: ADCON0 = 0x41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	19
;automatic_pump.h: 19: ADCON1 = 0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	20
	
l685:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
;; =============== function _ADC_Init ends ============

	signat	_ADC_Init,88
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
