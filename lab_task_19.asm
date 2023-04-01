;write an assembly language program to accept a digit display
; number of 1 and 0
.model small 
.stack 100h
.data  
msg1 db 0ah, 0dh, "Number of One : $"
msg0 db 0ah, 0dh, "Number of Zero : $"  
one db 0
zero db 0
.code
main proc  
    mov ax, @data
    mov ds, ax
     
    mov ah,1 
    int 21h 
    
    mov cx,8
    
    t:
    ROL al,1
    jc carry 
    jnc nocarry  
    
    carry:
    inc one
    loop t
    
    nocarry:
    inc zero 
    loop t
    
         
    add one, 48
    add zero, 48  
    mov ah,9
    lea dx,msg1
    int 21h
    mov ah,2
    mov dl,one 
    int 21h
    mov ah,9
    lea dx,msg0 
    int 21h
    mov dl, zero 
    mov ah,2
    int 21h
         
    exit: 
    mov ah, 4ch 
    int 21h
    
    main endp
end main