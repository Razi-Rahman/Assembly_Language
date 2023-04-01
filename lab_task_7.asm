;USING LOOP
    ;PRINTING A-Z THEN Z-A
.model small 
.stack 100h
.data  
.code
main proc  
    mov ax, @data
    mov ds, ax
     
     
    mov cx, 26d
    
    mov dl, 65
    
    mov ah,2   
    
    t:    
    int 21h 
    INC dl  
    loop t 
         ;----
        MOV AH,2  
       MOV DL, 0AH
            INT 21H     ;
            MOV DL, 0DH
            INT 21H
          ;----
      mov cx, 26d 
     mov dl, 90
     mov ah,2 
       
    
    p:    
    int 21h 
    DEC dl  
    loop p
       
    mov ah, 4ch 
    int 21h
    
    main endp
end main