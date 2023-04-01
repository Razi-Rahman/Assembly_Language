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
   je same
   jne notsame
   
   same:
   mov ah,2
   mov dl,'S'
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