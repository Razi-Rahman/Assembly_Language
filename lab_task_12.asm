.model small
.stack 100h 
.data  
.code

main proc
    mov ax, @data
    mov ds,ax
    
   mov ah, 1
   int 21h
   cmp al,'A'
   je ok
   cmp al,'a'
   je ok
   cmp al,'E'
   je ok
   cmp al,'e'
   je ok
   cmp al,'I'
   je ok
   cmp al,'i'
   je ok
   cmp al,'O'
   je ok
   cmp al,'o'
   je ok
   cmp al,'U'
   je ok
   cmp al,'u'
   je ok
   jne notsame
    
    
    
    
   ok:
   mov ah,2
   mov dl,'Y'
   int 21h
   jmp exit 

   
   notsame:
   mov ah,2
   mov dl, 'N'
   int 21h
   
   
    exit:          
    mov ah, 4ch
    int 21h
 main endp
end main