.MODEL SMALL
.STACK 100H
.DATA
D1 DB "INSERT A HEXA INPUT: $"
D2 DB 10,12,"YOUR BINARY OUTPUT IS: $"
MAIN PROC
  call INPUT
  
  mov ah, 4ch
  int 21h

main endp  


INPUT PROC
    MOV AX,@DATA
    MOV DS,AX
    LEA DX,D1 
MOV AH,9
INT 21H
     

XOR BX,BX
MOV CL,4
MOV AH,1
INT 21H




WHILE_:

CMP AL,0DH
JE END_WHILE

CMP AL,39H
JG LETTER 

AND AL,0FH
JMP SHIFT 

LETTER: 
SUB AL,37H
SHIFT:
SHL BX,CL
OR BL,AL


INT 21H
JMP WHILE_

END_WHILE:
 
MOV CX,16
LEA DX,D2
MOV AH,9
INT 21H

TOP:

ROL BX,1
JNC ZERO
JC DISPLAY
ZERO:
MOV DL,'0'
MOV AH,2
INT 21H
JMP EXIT
DISPLAY:
MOV DL,'1'
MOV AH,2
INT 21H
EXIT: 
LOOP TOP
MOV AH,4CH
INT 21H
 
INPUT endp 


end main
