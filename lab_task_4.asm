.MODEL SMALL
.STACK 100H
.DATA   
CR EQU 0DH
LF EQU 0AH
  CHAR DB ?,'$'  
  MSG1 DB 'ENTER A LOWER CASE LETTER: $'  
  MSG2 DB 0DH, 0AH,'INT UPPERCASE LETTER IT IS : $'
    MSG3 DB CR, LF,'AFTER CONVERTING AGAIN TO LOWER CASE : $' ;  0DH and 0AH  replaced by CR AND LF, name can be different

.CODE
MAIN PROC
          ; BODY OF THE PROCEDURE   
          MOV AX, @DATA
          MOV DS, AX  ;DS FOR DATA SEGMENT
              ;print user prompt
             LEA DX, MSG1
             MOV AH,9
             INT 21H
            ; input a character and  convert to upper case 
             MOV AH,1  ;input goes to AL
             INT 21H
             SUB AL, 20H
             MOV CHAR,AL  
          ; display on the next line        
             LEA DX, MSG2
             MOV AH,9
             INT 21H  
        ;display      
    MOV DL, CHAR  
    MOV AH, 2
    INT 21H      
           
            ;  convert to lower case 
             ADD AL, 20H
             MOV CHAR,AL  
          ; display on the next line        
             LEA DX, MSG3
             MOV AH,9
             INT 21H
             
        ;display      
    MOV DL, CHAR  
    MOV AH, 2
    INT 21H 
      
      MOV AH, 4CH
      INT 21H
    MAIN ENDP

END MAIN