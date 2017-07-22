		.ORIG x3000
LOOP		AND R0, R0, #0
		LEA R0, LABEL1
		TRAP x22
		TRAP x23
		LD R1, CONVERT
		ADD R3, R0, R1
		Brz FINISH
		
		LEA R0, LABEL2
		TRAP x22
		TRAP x23
		LD R1, ASCII
		ADD R0, R0, R1	
		
LOOP1		ADD R0, R0, #0
		TRAP x21
		ADD R3, R3, #-1
		Brp LOOP1
		
		
		Brnzp LOOP
		

FINISH		LEA R0, STOP 
		TRAP x22
		TRAP x25

LABEL1		.STRINGZ "\nEnter a number n between 1 and 9.\n"
LABEL2		.STRINGZ "\nEnter an uppercase letter.\n"
CONVERT		.FILL #-48
ASCII		.FILL #32
STOP		.STRINGZ "\nBye\n"
		.END