.model small
.stack 100h 
.data  
.code

main proc
    mov ax, @data
    mov ds,ax
    
    mov dl, '*'
    mov al,5
    mov bl,7
    cmp al, bl
    
    je l1
    jne l2
    
    mov ah,2  
    
    l2:
    int 21h 
    
    l1:
    int 21h 
    jmp exit
    
   
    exit:          
    mov ah, 4ch
    int 21h
 main endp
end main