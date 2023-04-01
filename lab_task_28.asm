; REVERSE INPUT 
.model small 
.stack 100h  
.data  
msg2 db 'After reverse : $' 
msg1 db 'Before reverse : $'

.CODE
MAIN PROC  
    mov ax, @data
    mov ds, ax   
    

  mov cx, 0 
  
  mov ah,1 
  INT 21H
  
  L1:
  CMP  AL,0DH
  JE L2
  PUSH AX
  INC CX
  INT 21H
  JMP L1
  
  L2:
  MOV AH,2 
  JCXZ EXIT  
  
  
  TOP:
  POP DX
  INT 21H
  LOOP TOP 
  
  EXIT:
  MOV AH, 4CH
  INT 21H
  
  
    
    
    

MAIN ENDP
END MAIN



