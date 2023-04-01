.model small
.stack 100h
.data   
.code
main proc 
    
    mov ax,@data
    mov ds,ax
    
    mov dx,0
    mov ah,1
    int 21h
    
    while_:
    cmp al, 0dh
    je end_while
    inc dx
    int 21h
    jmp while_
    
    end_while:  
    mov ah,4ch
    int 21h
    
    main endp
end main
