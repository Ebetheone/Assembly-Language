; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov si,0
mov cx,10
mov al,a[si]
inc si 
jishih:  
    cmp al,a[si]         ; a[i] iig a[i+1] tai jishij bn.
    ja findmax              ; a[i] ih bol "max" -ruu usrene.
    mov al,a[si]    
findmax: 
    inc si               ; arrayiin index utgiig negeer nemegduulj bn.
    loop jishih          ;daraagiin tootoi jishih gej bn
 cmp al,64h              ;3n_orontoi_too_hevleh
 ja c     
 aam 
 mov bl,al
 mov al,ah 
 call print
 mov al,bl
 call print
 int 20h
 c:
 aam
 mov bl,al
 mov al,ah
 aam 
 mov bh,al
 mov al,ah
 call print
 mov al,bh
 call print
 mov al,bl
 call print
 int 20h
 print:
 xor ah,ah 
 mov si, ax 
 mov dl,[si+hevleh]
 mov ah,02
 int 21h 
               
ret
max db 0
a db 1,2,3,4,5,6,7,8,9,128
hevleh db "0123456789"
