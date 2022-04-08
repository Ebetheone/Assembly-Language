org 100h
    
    mov dx, offset garaas
    mov ah, 09h
    int 21h
    mov dx, offset buffer
    mov ah, 0ah
	int 21h 
	mov dl, " "
	mov ah, 2
	int 21h
	jmp print
	buffer db 20,?, 20 dup(' ') 
    
    print:
    xor bx,bx
    mov bl, buffer[1]
    mov buffer[bx+2],'$'
    mov cl, buffer[1]
    mov di, 2
    mov ah, 2
    mov dl, 10
    int 21h
    mov ah, 2
    mov dl, 13
    int 21h
    mov dx, offset decimal
    mov ah, 09h
    int 21h   
      
    function:
    mov bl, buffer[di] 
    call printd
    mov ah, 2
    mov dl, " "
    int 21h
    add di, 1
    loop function
    int 20h
    
    printd:
    xor ax, ax
    mov al, bl
    aam
    push ax
    mov bl, ah
    mov al, bl
    aam
    add ax, 3030h
    push ax
    mov dl, ah
    mov ah, 2
    int 21h
    pop dx
    mov ah, 2
    int 21h
    pop ax
    add ax, 3030h
    mov dl, al
    mov ah, 2
    int 21h
     
ret   

    garaas db 'utga oruulna uu: $'
    decimal db 'decimal utga ni: $'

