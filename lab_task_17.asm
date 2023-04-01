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
    
    t:        
    mov ah,1
    int 21h
    
    cmp al,'z'
    je exit 
    
    loop t 
              
          
    exit: 
     
    mov ah,4ch
    int 21h
    
    main endp
end main
