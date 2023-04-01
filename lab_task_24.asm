.model small 
.stack 100h 
.data  

.code
main proc  
    mov ax, @data
    mov ds, ax
      
   mov ax, 1234h
   mov bx, 5678h
   mov cx, 9abch
   
   
    PUSH AX 
    PUSH BX 
    XCHG AX,CX 
    POP CX
     PUSH AX 
    POP BX 


    
    main endp
end main

