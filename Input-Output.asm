.model small
.stack 100h
.code

main proc
    mov ah, 1 ;     ah , 1 for take input 
    int 21h
    mov bl, al  ;  by default all data stored in AL reguster, here AL value stored in BL 
    
    mov ah, 1
    int 21h    ; this line is for excute purpose 
    mov bh, al ;  new AL value stored in BH 
    
    
    mov ah, 2 ;   ah, 2 is used for display data (int) (single character)
    mov dl, bl  ; BL value stored in DL
    int 21h ;excute it and print DL
    
    
    mov ah, 2
    mov dl, bh
    int 21h
    
    exit :
    mov ah, 4ch
    int 21h 
    main endp
end main
    
    