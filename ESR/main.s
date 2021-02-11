
	PRESERVE8
	THUMB
		
	AREA RESET, DATA, READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x20001000
	DCD Reset_Handler ; reset vector
	ALIGN
		AREA MYCODE, CODE, READONLY
    ENTRY
    EXPORT Reset_Handler
				  
Reset_Handler
start
		MOV   R0, 10                  ; number of words to copy
        LDR   R1, =src              ; source block
        LDR   R2, =dst              ; destination block
  
copy
        LDR   r3, [r1], #4         
        STR   r3, [r2], #4          
        SUBS  r0, r0, #1           
        BNE   copy             
STOP
	 MOV R10, R1
	 MOV R11, R2
	 AREA  Block, DATA, READWRITE
src     DCW   2,3,4,9,0xA,1,6,3,9,7
dst     DCW   0,0,0,0,0,0,0,0,0,0,0,0
	 	END