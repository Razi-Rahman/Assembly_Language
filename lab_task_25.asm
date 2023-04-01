 ;write assembly program to accept hexa input
;and display equivalent binary output
.model small
.stack 100h
.data     
msg1 db 'Enter Hex : $'
msg2 db 0ah,0dh, 'Binary of this Hex : $'
.code
main proc 
    
    mov ax,@data
    mov ds,ax

 
    xor bx,bx 
     
    mov ah,9
    lea dx,msg1
    int 21h 
    
    mov cl,4  
    mov ah,1
    
    f:

    int 21h
    cmp al, 0dh
    je exit
    
    cmp al,41h
    jge letter  
                
    sub al,48
    jmp shift            
    
    letter:
     sub al,37h
     
     shift:
     shl bx, cl
     or bl,al
     jmp f       
    
    
    exit:
    mov ah,2
    mov dl, bl
    ;int 21h 
    
     mov ah,9
    lea dx,msg2
    int 21h 
    
    mov cx,16
    
    t:
    rol bx,1
    jc carr
    jnc ncrr
    
    carr:
    mov ah,2
    mov dl,'1'
    int 21h
    jmp lt
    
    ncrr:
    mov ah,2
    mov dl,'0'
    int 21h
    jmp lt
    
    lt:
    loop t
   
    
    mov ah,4ch
    int 21h
    
    
    
    main endp
end main
