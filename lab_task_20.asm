;write an assembly language program to accept a digit display
; binary of the context BX
.model small 
.stack 100h
.data  
msg1 db 0ah, 0dh, "1$"
msg0 db 0ah, 0dh, "0$"  
one db 0
zero db 0
.code
main proc  
    mov ax, @data
    mov ds, ax
     
    mov ah,1 
    int 21h 
    
    mov cx,16
    
    t:
    ROL al,1
    jc carry 
    jnc nocarry  
    
    carry:
    mov ah,9
    lea dx,msg1 
    int 21h
    loop t
    
    nocarry:
     mov ah,9
    lea dx,msg0 
    int 21h
    loop t
    
    exit: 
    mov ah, 4ch 
    int 21h
    
    main endp
end main