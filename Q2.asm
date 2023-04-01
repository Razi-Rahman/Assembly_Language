.model small
.stack 100h 
.data

.code

main proc         
    mov ax, @data
    mov ds,ax
    
     mov cx, 100
     mov al,'a'
     mov bl,'z'
     
     mov bh,'0'
     
     t:
     cmp bl,al
     jnl here
     jl there  
     
     here: 
     ;
     inc al
     mov dl,al
     mov ah,2
     int 21h
     inc al
     loop t 
     
     there:
     inc bh
     mov ah,2
     mov dl,bh
     int 21h
     
     mov ah,4ch
     int 21h
    exit:          
    mov ah, 4ch
    int 21h
 main endp
end main