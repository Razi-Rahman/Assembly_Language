;PRINTING MSG
.MODEL SMALL
.STACK 100H
.DATA
D1 DB 'NAME : ANIK SEN$'  
D2 DB 'ID : 20-42138-1$'
D3 DB 'LOCATION : MIDDLE BADDA, DHAKA$'

.CODE
MAIN PROC
          ; BODY OF THE PROCEDURE   
          MOV AX, @DATA
          MOV DS, AX  ;DS FOR DATA SEGMENT
         
         LEA DX, D1   ;LINE EFECTIVE ADDRESS  
       
      MOV AH, 9 
      INT 21H 
            ; -------------- THIS SEGMENT FOR NEW LINE  ----------
  
      MOV AH,2   ;   TO DISPLAY SINGLE CHARACTER
       MOV DL, 0AH
            INT 21H     ;
            MOV DL, 0DH
            INT 21H
              ; ----------- ----------
      
              LEA DX, D2   
       
      MOV AH, 9 
      INT 21H       
            ; -------------- THIS SEGMENT FOR NEW LINE  ----------
  
      MOV AH,2   ;   TO DISPLAY SINGLE CHARACTER
       MOV DL, 0AH
            INT 21H     ;
            MOV DL, 0DH
            INT 21H
       LEA DX, D3   
       
      MOV AH, 9 
      INT 21H
      
      MOV AH, 4CH
      INT 21H
    MAIN ENDP

END MAIN