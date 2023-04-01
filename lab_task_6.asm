.model small 
.stack 100h
.data 
NAAM db 0dh, 0ah, 'Anik Sen$'
.code
main proc  
    mov ax, @data
    mov ds, ax
     
     
    mov cx, 10d
    
    LEA dx, NAAM
    
    mov ah, 9   
    
    t:    
    int 21h   
    loop t
       
       
    mov ah, 4ch 
    int 21h
    
    main endp
end main