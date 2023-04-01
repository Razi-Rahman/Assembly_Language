;TAKING A SINGLE INPUT FROM USER AND PRINTING IT
.MODEL SMALL
.STACK 100H
.DATA
D1 DB 'ENTER A CHARACTER$'   ;
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    LEA DX, D1
    MOV AH, 9
    INT 21H
        ;--- THIS SEGMENT WILL TAKE INPUT  ---
    MOV AH,1
    INT 21H 
    MOV BL,AL  ;AL stored in BL
    ;It will store in  AL     
    ;---- ---
    
    MOV AH,2
    MOV DL, 0DH
    INT 21H
    MOV DL, 0AH      
    INT 21H
    
    MOV DL, BL  ; BL stored in DL & print DL
    MOV AH, 2
    INT 21H   
    
          MOV AH, 4CH
      INT 21H
    MAIN ENDP

END MAIN