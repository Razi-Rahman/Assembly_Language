.model small
.stack 100h 
.data  
.code

main proc
    mov ax, @data
    mov ds,ax
    
    mov cx, 100
    mov ah,2
                            
    t:
   star:
   mov ah,2
   mov dl,'*'
   int 21h
   
   A:
   mov ah,2
   mov dl, 'A'
   int 21h
   
   loop t
   
   
    exit:          
    mov ah, 4ch
    int 21h
 main endp
end main