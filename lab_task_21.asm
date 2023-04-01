.model small 
.stack 100h
.data  
.code
main proc  
    mov ax, @data
    mov ds, ax
      
    mov bx,7987h 
    xor ax,ax
    
    mov cx,16
    t:
    rol bx,1
    jnc next
    inc ax
    next:
    loop t
    
    exit: 
    mov ah, 4ch 
    int 21h
    
    main endp
end main

