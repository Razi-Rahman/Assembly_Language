; REVERSE INPUT ONLY BINARY
.model small 
.stack 100h  
.data  
msg2 db 'After reverse : $' 
msg1 db 'Before reverse : $'  
msg db 0DH,0AH,0AH,'INPUT BINARY ONLY $'

NL DB 0AH,0DH,'$'

.CODE
MAIN PROC  
    mov ax, @data
    mov ds, ax
       
    MOV AH,9
   LEA DX, MSG1
   INT 21H 

   mov cx, 0
    
    MOV AH,1 
    
    
   L1: 
   MOV AH,1 
   INT 21H
   CMP AL, 0DH
   JE TOP
   CMP AL, '0'
   JE OK
   CMP AL, '1'
   JE OK  
   
   MOV AH,9
   LEA DX, MSG
   INT 21H 
   
   LEA DX, NL
   INT 21H

   JMP L1
   
   OK:  
    PUSH AX
   INC CX 
   JMP L1
          
   TOP:
   MOV AH,9
   LEA DX, MSG2
   INT 21H 
   JMP TOP1
   
   
   TOP1: 
   MOV AH,2
   POP DX
   INT 21H
   LOOP TOP1
    
  
  EXIT:
  MOV AH, 4CH
  INT 21H
  
  
    
    
    

MAIN ENDP
END MAIN



