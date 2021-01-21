
         PRESERVE8
          THUMB       
 

 
          AREA    RESET, DATA, READONLY
          EXPORT  __Vectors
 
__Vectors 
	  DCD  0x20001000     
          DCD  Reset_Handler  
  
          ALIGN
 
; The program
; Linker requires Reset_Handler
 
          AREA    MYCODE, CODE, READONLY
 
   	  ENTRY
   	  EXPORT Reset_Handler
 
 
Reset_Handler
;;;;;;;;;;User Code Starts from the next line;;;;;;;;;;;;

   	;  MOV32 R0, #0x762A
	  MOV32 R0, #0x1245AD54
	;  MOV32 R2, #0x6411
 	  MOV32 R2, #0x000DEF12
	  
STOP	
	  ADD R1,R0,R2
	  ADC R3,R0,R2,LSR #4
	  SUB R4,R3,R0
	  MUL R5,R0,R2
	  UDIV R6,R5,R2
	  RSB R7,R5,R2
	  ASR R8,R3,R2
	  UMULL R9,R10,R1,R2
	  SBC R11,R1
	  CMP R3,R0
	  LSL R12,R2, #2
	  
	B  STOP
 
          END	;End of the program