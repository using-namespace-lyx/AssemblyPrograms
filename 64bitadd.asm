	AREA RESET,CODE
	ENTRY
	LDR R0,=NUMS; MS1 LS1 MS 2 LS2
	LDR R1,[R0]
	LDR R2,[R0,#4]
	LDR R3,[R0,#8]
	LDR R4,[R0,#12]
	ADDS R5,R2,R4
	ADC R6,R1,R3
	LDR R0,=RES
	STR R6,[R0]
	STR R5,[R0,#4]
S    B S

NUMS DCD &12345678,&80000000,&000000001,&80000000
	
	AREA MEMORY,DATA
RES SPACE 8
	END

	