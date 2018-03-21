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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	global	main@a
main@a:	; 2 bytes @ 0x0
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x2
	ds	2
	global	main@i_1240
main@i_1240:	; 2 bytes @ 0x4
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
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
;; (0) _main                                                 6     6      0      90
;;                                              0 COMMON     6     6      0
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
;;COMMON               E      6       6       1       42.9%
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
;;		line 17 in file "D:\Work\Auto_Watering\PlantCare\pic_based\automatic_pump.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    4[COMMON] int 
;;  i               2    2[COMMON] int 
;;  a               2    0[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Work\Auto_Watering\PlantCare\pic_based\automatic_pump.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+btemp+1]
	line	19
	
l1769:	
;automatic_pump.c: 18: unsigned int a;
;automatic_pump.c: 19: TRISD = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	22
	
l1771:	
;automatic_pump.c: 22: PORTDbits.RD2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(8),2	;volatile
	line	23
	
l1773:	
;automatic_pump.c: 23: PORTDbits.RD5 = 1;
	bsf	(8),5	;volatile
	line	26
	
l1775:	
;automatic_pump.c: 26: PORTDbits.RD3 = 0;
	bcf	(8),3	;volatile
	line	27
	
l1777:	
;automatic_pump.c: 27: PORTDbits.RD4 = 0;
	bcf	(8),4	;volatile
	line	28
	
l1779:	
;automatic_pump.c: 28: PORTDbits.RD6 = 0;
	bcf	(8),6	;volatile
	line	29
	
l1781:	
;automatic_pump.c: 29: PORTDbits.RD7 = 0;
	bcf	(8),7	;volatile
	line	31
;automatic_pump.c: 31: PORTD = 0;
	clrf	(8)	;volatile
	goto	l1783
	line	32
;automatic_pump.c: 32: while(1)
	
l695:	
	line	34
	
l1783:	
;automatic_pump.c: 33: {
;automatic_pump.c: 34: PORTDbits.RD1 = 1;
	bsf	(8),1	;volatile
	line	40
	
l1785:	
;automatic_pump.c: 40: PORTDbits.RD3 = 0;
	bcf	(8),3	;volatile
	line	41
	
l1787:	
;automatic_pump.c: 41: PORTDbits.RD4 = 1;
	bsf	(8),4	;volatile
	line	43
	
l1789:	
;automatic_pump.c: 43: a = 200;
	movlw	low(0C8h)
	movwf	(main@a)
	movlw	high(0C8h)
	movwf	((main@a))+1
	line	45
;automatic_pump.c: 45: while(a--)
	goto	l1801
	
l697:	
	line	48
	
l1791:	
;automatic_pump.c: 46: {
;automatic_pump.c: 48: for(int i = 0; i < 15000; i++);
	clrf	(main@i)
	clrf	(main@i+1)
	
l1793:	
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
	goto	l1797
u40:
	goto	l1801
	
l1795:	
	goto	l1801
	
l698:	
	
l1797:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l1799:	
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
	goto	l1797
u50:
	goto	l1801
	
l699:	
	goto	l1801
	line	49
	
l696:	
	line	45
	
l1801:	
	movlw	low(01h)
	subwf	(main@a),f
	movlw	high(01h)
	skipc
	decf	(main@a+1),f
	subwf	(main@a+1),f
	movlw	high(0FFFFh)
	xorwf	((main@a+1)),w
	skipz
	goto	u65
	movlw	low(0FFFFh)
	xorwf	((main@a)),w
u65:

	skipz
	goto	u61
	goto	u60
u61:
	goto	l1791
u60:
	
l700:	
	line	50
;automatic_pump.c: 49: }
;automatic_pump.c: 50: PORTDbits.RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(8),3	;volatile
	line	51
;automatic_pump.c: 51: PORTDbits.RD4 = 0;
	bcf	(8),4	;volatile
	line	52
;automatic_pump.c: 52: PORTDbits.RD1 = 0;
	bcf	(8),1	;volatile
	line	54
;automatic_pump.c: 54: PORTDbits.RD6 = 0;
	bcf	(8),6	;volatile
	line	55
;automatic_pump.c: 55: PORTDbits.RD7 = 1;
	bsf	(8),7	;volatile
	line	57
	
l1803:	
;automatic_pump.c: 57: a = 200;
	movlw	low(0C8h)
	movwf	(main@a)
	movlw	high(0C8h)
	movwf	((main@a))+1
	line	59
;automatic_pump.c: 59: while(a--)
	goto	l1815
	
l702:	
	line	62
	
l1805:	
;automatic_pump.c: 60: {
;automatic_pump.c: 62: for(int i = 0; i < 15000; i++);
	clrf	(main@i_1240)
	clrf	(main@i_1240+1)
	
l1807:	
	movf	(main@i_1240+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03A98h))^80h
	subwf	btemp+1,w
	skipz
	goto	u75
	movlw	low(03A98h)
	subwf	(main@i_1240),w
u75:

	skipc
	goto	u71
	goto	u70
u71:
	goto	l1811
u70:
	goto	l1815
	
l1809:	
	goto	l1815
	
l703:	
	
l1811:	
	movlw	low(01h)
	addwf	(main@i_1240),f
	skipnc
	incf	(main@i_1240+1),f
	movlw	high(01h)
	addwf	(main@i_1240+1),f
	
l1813:	
	movf	(main@i_1240+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03A98h))^80h
	subwf	btemp+1,w
	skipz
	goto	u85
	movlw	low(03A98h)
	subwf	(main@i_1240),w
u85:

	skipc
	goto	u81
	goto	u80
u81:
	goto	l1811
u80:
	goto	l1815
	
l704:	
	goto	l1815
	line	63
	
l701:	
	line	59
	
l1815:	
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
	goto	l1805
u90:
	
l705:	
	line	64
;automatic_pump.c: 63: }
;automatic_pump.c: 64: PORTDbits.RD6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(8),6	;volatile
	line	65
;automatic_pump.c: 65: PORTDbits.RD7 = 0;
	bcf	(8),7	;volatile
	goto	l1783
	line	66
	
l706:	
	line	32
	goto	l1783
	
l707:	
	line	67
	
l708:	
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
