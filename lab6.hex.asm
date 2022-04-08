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
    xor bx, bx
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
    mov dx, offset heximal
    mov ah, 09h
    int 21h
    
    function:
    mov bl, buffer[di]
    mov al, bl
    shr al,4
    call printh
    mov al, bl
    shl al, 4
    shr al, 4
    call printh
    mov ah, 2
    mov dl, " "
    int 21h
    add di, 1
    loop function
    int 20h
    
    printh:
    mov ah, 0
    mov si, ax
    mov dl, [si+hexdigit]
    mov ah,2
    int 21h 
    
    ret

    hexdigit db '0123456789ABCDEF'
    garaas db 'utga oruulna uu: $'
    heximal db 'heximal utga ni: $'
    