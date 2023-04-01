     .MODEL SMALL 
     .STACK 200H
     .DATA
     
        ;WHERE ALL THE VARIABLE WILL BE DECLARED   
        
      ;  NUM DB 'd' ; d=100
       ; NUM2 DB ?
        ;CHAR DB '#'
        ;STR DB "HELLO FROM EMU8086"
        ;CHAR2 DB ?  
        
        
        NUM DB 49
        CHAR DB 'A'
        MSG DB "HELLO FROM EMU8086 $"
     
     .CODE
     
        ;CODE SEGMENT 
     
                         
        MAIN PROC ;INT MAIN
            ;STATEMENT
            ;STATEMENT
            
            
            MOV AX , @DATA
            MOV DS , AX 
            
            MOV AH, 2
            MOV DL, NUM 
            INT 21H 
                 ; NEW LINE NEEDED
            ;MOV AH, 2
            MOV DL, 0AH
            INT 21H 
            MOV DL, 0DH
            INT 21H  
            
            ;MOV AH, 2
            MOV DL, CHAR 
            INT 21H    
            
            MOV AH, 9
            LEA DX, MSG
            INT 21H
            
            MOV AH, 4CH
            INT 21H
            
         MAIN ENDP
     
     END MAIN ; EXIT(0)