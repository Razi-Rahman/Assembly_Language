 .model small
.stack 100h
.data   
msg db "Enter a character : $"
nl db 0ah,0dh," $" 
th db "Thank You$"
.code
main proc 
    
    mov ax,@data
    mov ds,ax

    
    mov ah,9
    lea dx, msg
    int 21h        
            
    mov ah,1
    int 21h
    mov bl,al
    mov ah,1
    int 21h
    mov bh,al
    
    cmp bl,bh
    je equal
    jl l
    jg g
    
    
    
    equal:
    mov ah,9
    lea dx, nl
    int 21h 
    mov ah,2
    mov dl,bl
    int 21h
    mov dl,bh
    int 21h
    jmp exit
              
      g:
      mov ah,9
    lea dx, nl
    int 21h 
    mov ah,2
    mov dl,bh
    int 21h
    mov dl,bl
    int 21h
    jmp exit 
    
     l:
      mov ah,9
    lea dx, nl
    int 21h 
    mov ah,2
    mov dl,bl
    int 21h
    mov dl,bh
    int 21h
    
    jmp exit         
    exit: 
    mov ah,9
    lea dx, nl
    int 21h
    mov ah,9
    lea dx, th
    int 21h 
    mov ah,4ch
    int 21h
    
    main endp
end main
