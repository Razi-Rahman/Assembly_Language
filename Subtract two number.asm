.model small
.stack 100h
.data
.code
main proc  
    
    mov ax, @data
    mov ds, ax        
    
    mov ah, 1
    int 21h
    mov bh, al
    
    mov ah, 1
    int 21h
    mov bl, al
    
    sub bh,bl
    add bh,48
    mov dl,bh
    
    mov ah,2
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h 
    
    main endp
end main