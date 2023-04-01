.MODEL SMALL
.STACK 100H
.DATA
D1 DB  'NAME : ANIK SEN$'  
D2 DB 0DH,0AH, 'ID : 20-42138-1$'  ; PRINT NEW LINE
D3 DB 0DH,0AH, 'LOCATION : MIDDLE BADDA, DHAKA$'

.CODE
MAIN PROC
          ; BODY OF THE PROCEDURE   
          MOV AX, @DATA
          MOV DS, AX  ;DS FOR DATA SEGMENT
         
         LEA DX, D1   ;LEA -> LINE EFECTIVE ADDRESS  
       
      MOV AH, 9 
      INT 21H 

              LEA DX, D2   
       
      MOV AH, 9 
      INT 21H       

       LEA DX, D3   
       
      MOV AH, 9 
      INT 21H
      
      MOV AH, 4CH
      INT 21H
    MAIN ENDP

END MAIN