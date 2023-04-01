.model small
.stack 100h
.data 
tg db 0ah,0dh, 'Numbers between them : $' 
tn db 0ah,0dh, 'Total Degit : $'   
msg1 db 0ah,0dh,'Enter first Number : $' 
msg2 db 0ah,0dh,'Enter second Number : $'  
nl db 0ah,0dh, '$'   

tt db 1


.code
main proc 
    mov ax,@data
    mov ds,ax 
            
             mov ah,9
    lea dx,msg1
    int 21h 
    
    mov ah,1
    int 21h
    mov bl,al 
    
     mov ah,9
    lea dx,msg2
    int 21h 
    
    mov ah,1
    int 21h
    mov bh,al 
     
    
    mov ah,9
    lea dx,tg
    int 21h  
    

    
    cmp bl,bh
    je equal 
    jl l
    jg g
    
    l: 
    mov cx,10
    t:   
    mov ah,9
    lea dx,nl
    int 21h
    mov ah,2
    mov dl, bl  
    int 21h
    cmp bl, bh
    je exit
    inc bl 
    
    inc tt
   
    loop t 
    
       
    g: 
    mov cx,10
    t1:   
    mov ah,9
    lea dx,nl
    int 21h
    mov ah,2
    mov dl, bl  
    int 21h 
    cmp bl, bh 
    je exit 
    dec bl
    
    inc tt
    
    loop t1 
       
    equal:
    
    mov cx,10
    t2:
    mov ah,2
    mov dl, bl  
    int 21h
    cmp bl, bh
    je exit
    inc bl 
   
    loop t2  
    
    add tt,48 
        
    exit:  
    mov ah,9
    lea dx,tn
    int 21h 
            
    add tt,48
    mov dl,tt  
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main