;Suppose BX has 7f7fh; write an assembly program to
; display binary of the content of bx. example: 0111111101111111
.model small 
.stack 100h 
.data  
b db 0ah,0dh,'Binary  : $' 

.code
main proc  
    mov ax, @data
    mov ds, ax
      
    mov bx,7f7fh 
    xor ax,ax
    
    mov ah,9
    lea dx,b
    int 21h
    mov cx,16
    t:
    rol bx,1
    jnc zero
    jc one 
    
    zero:
    mov ah,2
    mov dl,'0'
    int 21h
    jmp exl
    one:
    mov ah,2
    mov dl,'1'
    int 21h
    jmp exl
    
    exl:
    loop t
    
    exit: 
    mov ah, 4ch 
    int 21h
    
    main endp
end main

