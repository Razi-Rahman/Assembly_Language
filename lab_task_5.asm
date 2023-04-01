;PRINTING STAR USING LOOP
.model small 
.stack 100h
.data  
.code
main proc  
    mov ax, @data
    mov ds, ax
     
     
    mov cx, 10d
    
    mov dl, "*"
    
    mov ah,2   
    
    t:    
    int 21h   
    loop t
       
       
    mov ah, 4ch 
    int 21h
    
    main endp
end main