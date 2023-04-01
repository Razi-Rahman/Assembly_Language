;Print A-Z Using Loop 
.model small
.stack 100h 
.data  
a db 'Learning Loop$'
.code

main proc
    mov ax, @data
    mov ds,ax
    
    mov ah,9 ; for pinting purpose
    lea dx, a
    int 21h 
    
    mov ah,2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h 
    
    mov cx, 26
    mov ah,2
    mov dl, 'A'
                            
    t:
    int 21h 
    inc dl
    loop t
    
    exit:
    mov ah, 4ch
    int 21h
 main endp
end main