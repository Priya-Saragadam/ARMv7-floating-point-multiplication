	AREA ASSIGNMENT,CODE,READONLY
	ENTRY
	LDR R0,=VALUE1     ;//R0 gets loaded with the memory address of RESULT VALUE1
	LDMIA R0,{R1-R4}   ;//R1 contains the data of VALUE1, R2 contains the data of VALUE2 and similiarly, r3,r4 contain the DECIMAL_POINT1&2 respectively
	MULS R5,R1,R2      ;//VALUE1 and VALUE2 get multiplied and the result is stored in R5
	ADCS R6,R4,R3      ;//DECIMAL_POINT1 AND DECIMAL_POINT2 get added and the result is stored in R6
	LDR R0,=RESULT     ;//R0 gets loaded with the memory address of RESULT
	STMIA R0,{R5,R6}   ;//In the location pointed by R0, store R5 and R6 
SAMBA B SAMBA              ;//Infinite loop to avoid repitation of the same program
VALUE1 DCD -15             ; VALUE1 is a variable in which an integer i.e, -15 is stored
VALUE2 DCD 15              ; VALUE2 is a variable in which an integer i.e, -15 is stored
DECIMAL_POINT1 DCD 1       ; DECIMAL_POINT1 denotes the exponent of VALUE1
DECIMAL_POINT2 DCD 1       ; DECIMAL_POINT2 denotes the exponent of VALUE2 
	AREA answer,DATA,READWRITE
RESULT DCD 0X000           ; RESULT is a variable in which mantissa and exponent are stored
	END
