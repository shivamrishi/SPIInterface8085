	LXI SP, 0000H
MAIN:	CALL N0
	CALL DELAY
	CALL NE22
	CALL DELAY
	CALL NE45
	CALL DELAY
	CALL NE67
	CALL DELAY	
	CALL E90
	CALL DELAY
	CALL SE112
	CALL DELAY
	CALL SE135
	CALL DELAY
	CALL SE157
	CALL DELAY
	CALL S180
	CALL DELAY
	CALL SW202
	CALL DELAY
	CALL SW225
	CALL DELAY
	CALL SW247
	CALL DELAY	
	CALL W270
	CALL DELAY
	CALL NW292
	CALL DELAY
	CALL NW315
	CALL DELAY
	CALL NW337
	CALL DELAY
	JMP MAIN


N0: 	MVI A, FEH
	OUT 83H
	MVI A, FFH
	OUT 84H
	RET
NE22: 	MVI A, FDH
	OUT 83H
	MVI A, FFH
	OUT 84H
	RET
NE45: 	MVI A, FBH
	OUT 83H
	MVI A, FFH
	OUT 84H
	RET
NE67: 	MVI A, F7H
	OUT 83H
	MVI A, FFH
	OUT 84H
	RET
E90: 	MVI A, EFH
	OUT 83H
	MVI A, FFH
	OUT 84H
	RET
SE112: 	MVI A, DFH
	OUT 83H
	MVI A, FFH
	OUT 84H
	RET
SE135: 	MVI A, BFH
	OUT 83H
	MVI A, FFH
	OUT 84H
	RET
SE157: 	MVI A, 7FH
	OUT 83H
	MVI A, FFH
	OUT 84H
	RET
S180: 	MVI A, FEH
	OUT 84H
	MVI A, FFH
	OUT 83H
	RET
SW202: 	MVI A, FDH
	OUT 84H
	MVI A, FFH
	OUT 83H
	RET
SW225: 	MVI A, FBH
	OUT 84H
	MVI A, FFH
	OUT 83H
	RET
SW247: 	MVI A, F7H
	OUT 84H
	MVI A, FFH
	OUT 83H
	RET
W270: 	MVI A, EFH
	OUT 84H
	MVI A, FFH
	OUT 83H
	RET
NW292: 	MVI A, DFH
	OUT 84H
	MVI A, FFH
	OUT 83H
	RET
NW315: 	MVI A, BFH
	OUT 84H
	MVI A, FFH
	OUT 83H
	RET
NW337: 	MVI A, 7FH
	OUT 84H
	MVI A, FFH
	OUT 83H
	RET

DELAY:
	   LXI B,61A7
DELAYLoop:
	   DCX B
	   MOV A,B
	   ORA C
	   JNZ DELAYLoop
	   RET