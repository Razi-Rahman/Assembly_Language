;USING JUMP CHECKING A DIGIT ZERO, POSITIVE OR NEGATIVE
.model small
.stack 100h 
.data  
   msg1 db 'Zero Number$'
      msg2 db 'Negative Number$'
         msg3 db 'Positive Number$'
.code

main proc
    mov ax, @data
    mov ds,ax
    
    mov ah,1
    int 21h
    
    cmp al, '0'
    je zero
    jl negative 
    jg positive  
    
    zero:
        mov ah,9
        lea dx,msg1
        int 21h
    jmp exit
    
    negative:
    mov ah,9
        lea dx,msg2
        int 21h
     
     jmp exit
     
    positive:
    mov ah,9
        lea dx,msg3
        int 21h
           
     
    exit:          
    mov ah, 4ch
    int 21h
 main endp
end main