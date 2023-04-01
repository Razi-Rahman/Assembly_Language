.model small 
.stack 100h
.data 
.code
main proc  
    mov ax, @data
    mov ds, ax
     
     
    mov cx, 255
    
    mov dl, 0
    
    mov ah,2  
    
    t:    
    int 21h
    inc dl   
    loop t
       
       
    mov ah, 4ch 
    int 21h
    
    main endp
end main