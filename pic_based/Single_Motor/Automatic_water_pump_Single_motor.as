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
	FNROOT	_main
	global	_ADCON0
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTD
_PORTD	set	8
	global	_PORTDbits
_PORTDbits	set	8
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
	global	_TRISD
_TRISD	set	136
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
	file	"Automatic_water_pump_Single_motor.as"
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	global	main@b
main@b:	; 2 bytes @ 0x0
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x2
	ds	2
	global	main@i_1241
main@i_1241:	; 2 bytes @ 0x4
	ds	2
	global	main@a
main@a:	; 2 bytes @ 0x6
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
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
;; (0) _main                                                 8     8      0     120
;;                                              0 COMMON     8     8      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 19 in file "D:\Work\Auto_Watering\PlantCare\pic_based\Single_Motor\Single_Motor.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    4[COMMON] int 
;;  i               2    2[COMMON] int 
;;  b               2    0[COMMON] int 
;;  a               2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         8       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Work\Auto_Watering\PlantCare\pic_based\Single_Motor\Single_Motor.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0+btemp+1]
	line	21
	
l1777:	
;Single_Motor.c: 20: unsigned int a;
;Single_Motor.c: 21: TRISD = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	23
	
l1779:	
;Single_Motor.c: 23: PORTDbits.RD2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8),2	;volatile
	line	24
	
l1781:	
;Single_Motor.c: 24: PORTDbits.RD5 = 1;
	bsf	(8),5	;volatile
	line	27
	
l1783:	
;Single_Motor.c: 27: PORTDbits.RD3 = 0;
	bcf	(8),3	;volatile
	line	28
	
l1785:	
;Single_Motor.c: 28: PORTDbits.RD4 = 1;
	bsf	(8),4	;volatile
	line	29
	
l1787:	
;Single_Motor.c: 29: PORTDbits.RD6 = 0;
	bcf	(8),6	;volatile
	line	30
	
l1789:	
;Single_Motor.c: 30: PORTDbits.RD7 = 0;
	bcf	(8),7	;volatile
	line	32
;Single_Motor.c: 32: PORTD = 0;
	clrf	(8)	;volatile
	goto	l1791
	line	33
;Single_Motor.c: 33: while(1)
	
l695:	
	line	35
	
l1791:	
;Single_Motor.c: 34: {
;Single_Motor.c: 35: PORTDbits.RD1 = 1;
	bsf	(8),1	;volatile
	line	38
	
l1793:	
;Single_Motor.c: 38: PORTDbits.RD4 = 0;
	bcf	(8),4	;volatile
	line	40
	
l1795:	
;Single_Motor.c: 40: a = 375;
	movlw	low(0177h)
	movwf	(main@a)
	movlw	high(0177h)
	movwf	((main@a))+1
	line	42
;Single_Motor.c: 42: while(a--)
	goto	l1811
	
l697:	
	line	45
	
l1797:	
;Single_Motor.c: 43: {
;Single_Motor.c: 45: for(int i = 0; i < 15000; i++);
	clrf	(main@i)
	clrf	(main@i+1)
	
l1799:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03A98h))^80h
	subwf	btemp+1,w
	skipz
	goto	u45
	movlw	low(03A98h)
	subwf	(main@i),w
u45:

	skipc
	goto	u41
	goto	u40
u41:
	goto	l1803
u40:
	goto	l1807
	
l1801:	
	goto	l1807
	
l698:	
	
l1803:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1805:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03A98h))^80h
	subwf	btemp+1,w
	skipz
	goto	u55
	movlw	low(03A98h)
	subwf	(main@i),w
u55:

	skipc
	goto	u51
	goto	u50
u51:
	goto	l1803
u50:
	goto	l1807
	
l699:	
	line	46
	
l1807:	
;Single_Motor.c: 46: if (a<=50)
	movlw	high(033h)
	subwf	(main@a+1),w
	movlw	low(033h)
	skipnz
	subwf	(main@a),w
	skipnc
	goto	u61
	goto	u60
u61:
	goto	l1811
u60:
	line	48
	
l1809:	
;Single_Motor.c: 47: {
;Single_Motor.c: 48: PORTDbits.RD0 = ~PORTDbits.RD0;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(8),0	;volatile
	setc
	btfsc	status,0
	goto	u71
	goto	u70
	
u71:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8),0	;volatile
	goto	u84
u70:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(8),0	;volatile
u84:
	goto	l1811
	line	49
	
l700:	
	goto	l1811
	line	50
	
l696:	
	line	42
	
l1811:	
	movlw	low(01h)
	subwf	(main@a),f
	movlw	high(01h)
	skipc
	decf	(main@a+1),f
	subwf	(main@a+1),f
	movlw	high(0FFFFh)
	xorwf	((main@a+1)),w
	skipz
	goto	u95
	movlw	low(0FFFFh)
	xorwf	((main@a)),w
u95:

	skipz
	goto	u91
	goto	u90
u91:
	goto	l1797
u90:
	
l701:	
	line	52
;Single_Motor.c: 49: }
;Single_Motor.c: 50: }
;Single_Motor.c: 52: PORTDbits.RD0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(8),0	;volatile
	line	54
;Single_Motor.c: 54: PORTDbits.RD4 = 1;
	bsf	(8),4	;volatile
	line	57
;Single_Motor.c: 57: PORTDbits.RD1 = 0;
	bcf	(8),1	;volatile
	line	59
	
l1813:	
;Single_Motor.c: 59: int b = 1000;
	movlw	low(03E8h)
	movwf	(main@b)
	movlw	high(03E8h)
	movwf	((main@b))+1
	line	60
;Single_Motor.c: 60: while(b--)
	goto	l1831
	
l703:	
	line	62
	
l1815:	
;Single_Motor.c: 61: {
;Single_Motor.c: 62: a= 100;
	movlw	low(064h)
	movwf	(main@a)
	movlw	high(064h)
	movwf	((main@a))+1
	line	63
;Single_Motor.c: 63: while(a--)
	goto	l1827
	
l705:	
	line	66
	
l1817:	
;Single_Motor.c: 64: {
;Single_Motor.c: 66: for(int i = 0; i < 15000; i++);
	clrf	(main@i_1241)
	clrf	(main@i_1241+1)
	
l1819:	
	movf	(main@i_1241+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03A98h))^80h
	subwf	btemp+1,w
	skipz
	goto	u105
	movlw	low(03A98h)
	subwf	(main@i_1241),w
u105:

	skipc
	goto	u101
	goto	u100
u101:
	goto	l1823
u100:
	goto	l1827
	
l1821:	
	goto	l1827
	
l706:	
	
l1823:	
	movlw	low(01h)
	addwf	(main@i_1241),f
	skipnc
	incf	(main@i_1241+1),f
	movlw	high(01h)
	addwf	(main@i_1241+1),f
	
l1825:	
	movf	(main@i_1241+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03A98h))^80h
	subwf	btemp+1,w
	skipz
	goto	u115
	movlw	low(03A98h)
	subwf	(main@i_1241),w
u115:

	skipc
	goto	u111
	goto	u110
u111:
	goto	l1823
u110:
	goto	l1827
	
l707:	
	goto	l1827
	line	67
	
l704:	
	line	63
	
l1827:	
	movlw	low(01h)
	subwf	(main@a),f
	movlw	high(01h)
	skipc
	decf	(main@a+1),f
	subwf	(main@a+1),f
	movlw	high(0FFFFh)
	xorwf	((main@a+1)),w
	skipz
	goto	u125
	movlw	low(0FFFFh)
	xorwf	((main@a)),w
u125:

	skipz
	goto	u121
	goto	u120
u121:
	goto	l1817
u120:
	goto	l1829
	
l708:	
	line	68
	
l1829:	
;Single_Motor.c: 67: }
;Single_Motor.c: 68: PORTDbits.RD1 = ~PORTDbits.RD1;
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(8),1	;volatile
	setc
	btfsc	status,0
	goto	u131
	goto	u130
	
u131:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8),1	;volatile
	goto	u144
u130:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(8),1	;volatile
u144:
	goto	l1831
	line	69
	
l702:	
	line	60
	
l1831:	
	movlw	low(-1)
	addwf	(main@b),f
	skipnc
	incf	(main@b+1),f
	movlw	high(-1)
	addwf	(main@b+1),f
	movlw	high(-1)
	xorwf	((main@b+1)),w
	skipz
	goto	u155
	movlw	low(-1)
	xorwf	((main@b)),w
u155:

	skipz
	goto	u151
	goto	u150
u151:
	goto	l1815
u150:
	goto	l1791
	
l709:	
	goto	l1791
	line	70
	
l710:	
	line	33
	goto	l1791
	
l711:	
	line	71
	
l712:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
