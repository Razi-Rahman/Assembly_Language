;multiplication using shl, shr, add
.model small 
.stack 100h 
.data  
.code
main proc   
    
    call multiply
     exit: 
    mov ah, 4ch 
    int 21h 
 main endp 


multiply proc 
    
    mov ax, 0001h
    mov bx, 007fh
     
        push ax
        push bx
        xor dx,dx  
        
     repeat:
        test bx,1
        jz end_if  
        
        add dx,ax
        
     end_if:
     shl ax,1
     shr bx,1
     
     jnz repeat
     pop bx
     pop ax 
     ret
     
    
  multiply end 
    
   
end main

