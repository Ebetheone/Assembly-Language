mov ah,00h ;set conf video mode
mov al,13h ;choose vido mode
mov cx,15;heden shirheg
int 10h
    mov ah,0ch ;zurah mode
    mov al,0eh ;ungu songoh 
    mov bh,00h ;huudas
    mov cx,ehlel ;bagana
    mov dx,ehlel ;mor 
    mov ah,0ch
    mov al,0fh ;ungu songoh 
    mov cx,10d ;bagana
    mov dx,10d ;mor
loop1:
    mov cx,ehlel
    loop2:
        cmp cx,ehlel
        je tsagaan
        cmp dx,ehlel
        je tsagaan
        cmp cx,duusahb
        je tsagaan
        cmp dx,duusahm
        je tsagaan
        cmp cx,32h
        jl tsenher
        jge ulaan 
        tsagaan:
            mov ah,0ch ;zurah mode
            mov al,0fh ;ungu songoh
            int 10h
            jmp bolson
        tsenher:
            mov ah,0ch ;zurah mode
            mov al,09h ;ungu songoh
            int 10h
            jmp bolson
        ulaan:
            mov ah,0ch ;zurah mode
            mov al,04h ;ungu songoh
            int 10h
        bolson:
            add cx,4
            cmp cx,5bh
            jle loop2
        add dx,4 
        cmp dx,143d 
        jge garah
        jmp loop1
garah:
    mov ah,0ch
    mov al,0fh ;ungu songoh 
    mov cx,45d ;bagana
    mov dx,22d ;mor  
loopt:
    mov cx,47d ;bagana
    loopto:
        int 10h
        inc cx
        cmp cx,54d
        jne loopto
    inc dx
    cmp dx,23d
    jne loopt    
loop3:
    mov cx,46d ;bagana
    loop4:
        int 10h
        inc cx
        cmp cx,55d
        jne loop4
    inc dx
    cmp dx,31d
    jne loop3
looptol:
    mov cx,47d ;bagana
    looptolgoi:
        int 10h
        inc cx
        cmp cx,54d
        jne looptolgoi
    inc dx
    cmp dx,32d
    jne looptol
loop5:
    mov cx,49d ;bagana
    loop6:
        int 10h
        inc cx
        cmp cx,52d
        jne loop6
    inc dx
    cmp dx,36d
    jne loop5
    
loop7:
    mov cx,40d ;bagana
    loop8:
        int 10h
        inc cx
        cmp cx,55d
        jne loop8
    inc dx
    cmp dx,40d
    jne loop7
loop9:
    mov cx,37d ;bagana
    loop10:
        int 10h
        inc cx
        cmp cx,60d
        jne loop10
    inc dx
    cmp dx,43d
    jne loop9
loop11:
    mov cx,35d ;bagana
    loop12:
        int 10h
        inc cx
        cmp cx,63d
        jne loop12
    inc dx
    cmp dx,46d
    jne loop11
loop13:
    mov cx,32d ;bagana
    loop14:
        int 10h
        inc cx
        cmp cx,66d
        jne loop14
    inc dx
    cmp dx,49d
    jne loop13
loop15:
    mov cx,31d ;bagana
    loop16:
        int 10h
        inc cx
        cmp cx,56d
        jne loop16
    inc dx
    cmp dx,54d
    jne loop15
loop17:
    mov cx,37d ;bagana
    loop18:
        int 10h
        inc cx
        cmp cx,54d
        jne loop18
    inc dx
    cmp dx,59d
    jne loop17
loop19:
    mov cx,35d ;bagana
    loop20:
        int 10h
        inc cx
        cmp cx,56d
        jne loop20
    inc dx
    cmp dx,62d
    jne loop19
loop21:
    mov cx,35d ;bagana
    loop22:
        int 10h
        inc cx
        cmp cx,56d
        jne loop22
    inc dx
    cmp dx,64d
    jne loop21
loop23:
    mov cx,36d ;bagana
    loop24:
        int 10h
        inc cx
        cmp cx,57d
        jne loop24
    inc dx
    cmp dx,66d
    jne loop23
loop25:
    mov cx,37d ;bagana
    loop26:
        int 10h
        inc cx
        cmp cx,58d
        jne loop26
    inc dx
    cmp dx,68d
    jne loop25
loop27:
    mov cx,40d ;bagana
    loop28:
        int 10h
        inc cx
        cmp cx,58d
        jne loop28
    inc dx
    cmp dx,71d
    jne loop27
loop29:
    mov cx,42d ;bagana
    loop30:
        int 10h
        inc cx
        cmp cx,58d
        jne loop30
    inc dx
    cmp dx,73d
    jne loop29
loop31:
    mov cx,45d ;bagana
    loop32:
        int 10h
        inc cx
        cmp cx,59d
        jne loop32
    inc dx
    cmp dx,76d
    jne loop31
loop33:
    mov cx,49d ;bagana
    loop34:
        int 10h
        inc cx
        cmp cx,59d
        jne loop34
    inc dx
    cmp dx,79d
    jne loop33
loop35:
    mov cx,52d ;bagana
    loop36:
        int 10h
        inc cx
        cmp cx,60d
        jne loop36
    inc dx
    cmp dx,83d
    jne loop35
loop37:
    mov cx,56d ;bagana
    loop38:
        int 10h
        inc cx
        cmp cx,60d
        jne loop38
    inc dx
    cmp dx,90d
    jne loop37
loop41:
    mov cx,58d ;bagana
    loop42:
        int 10h
        inc cx
        cmp cx,62d
        jne loop42
    inc dx
    cmp dx,101d
    jne loop41
mov dx,49d
loophh:
    mov cx,62d ;bagana
    loophha:
        int 10h
        inc cx
        cmp cx,66d
        jne loophha
    inc dx
    cmp dx,57d
    jne loophh
loopza:
    mov cx,64d ;bagana
    loopzza:
        int 10h
        inc cx
        cmp cx,68d
        jne loopzza
    inc dx
    cmp dx,61d
    jne loopza
loopb:
    mov cx,66d ;bagana
    loopbo:
        int 10h
        inc cx
        cmp cx,70d
        jne loopbo
    inc dx
    cmp dx,63d
    jne loopb
loopbom:
    mov cx,64d ;bagana
    loopbomb:
        int 10h
        inc cx
        cmp cx,72d
        jne loopbomb
    inc dx
    cmp dx,65d
    jne loopbom
loopbombo:
    mov cx,62d ;bagana
    loopbombog:
        int 10h
        inc cx
        cmp cx,74d
        jne loopbombog
    inc dx
    cmp dx,71d
    jne loopbombo
loopd:
    mov cx,64d ;bagana
    loopduus:
        int 10h
        inc cx
        cmp cx,72d
        jne loopduus
    inc dx
    cmp dx,73d
    jne loopd

mov cx,15d;bagana
n:
    mov dx,110d 
    loopn:
        int 10h
        inc dx
        cmp dx,130d
        jne loopn
    inc cx
    cmp cx,18d
    jne n
mov dx,110d ;mor
t:  
    mov cx, ehlehb ;bagana
    t1:
        int 10h
        inc cx
        cmp cx,hha
        jne t1
    cmp dx,shalgah 
    jne yv
    inc hha
    add shalgah,3d
    inc ehlehb
    yv:
    inc dx
    cmp dx,130d
    jne t
sub cx,2 
n1:
    mov dx,110d ;mor
    loopn1:
        int 10h
        inc dx
        cmp dx,130d
        jne loopn1
    inc cx
    cmp cx,28d
    jne n1 

mov cx,28d          
add cx,2 
bu: 
    mov dx,110d ;mor
    loopbu:
        int 10h
        inc dx
        cmp dx,130d
        jne loopbu
    inc cx
    cmp cx,33d
    jne bu
mov dx,110d 
b1: 
    mov cx, 33d
    loopb1:
        int 10h
        inc cx
        cmp cx,37d
        jl loopb1
    inc dx
    cmp dx,113d
    jne b1
b2: 
    mov cx, 36d
    loopb2:
        int 10h
        inc cx
        cmp cx,39d
        jl loopb2
    inc dx
    cmp dx,117d
    jne b2
b3: 
    mov cx, 33d
    loopb3:
        int 10h
        inc cx
        cmp cx,37d
        jl loopb3
    inc dx
    cmp dx,121d
    jne b3
b4: 
    mov cx, 36d
    loopb4:
        int 10h
        inc cx
        cmp cx,40d
        jl loopb4
    inc dx
    cmp dx,126d
    jne b4
mov cx, 33d
loopbb:
    int 10h
    inc cx
    cmp cx,40d
    jl loopbb
    inc dx
b5: 
    mov cx, 33d
    loopb5:
        int 10h
        inc cx
        cmp cx,37d
        jl loopb5
    inc dx
    cmp dx,130d
    jne b5 
mov dx,110d
a1:  
    mov cx, ehlehbaa ;bagana
    loopa1:
        int 10h
        dec cx
        cmp cx,hhaaa
        jne loopa1
    cmp dx,shalgahaa 
    jne yv2
    dec hhaaa
    add shalgahaa,3d
    dec ehlehbaa
    yv2:
    inc dx
    cmp dx,130d
    jne a1   
mov dx,110d 
a:  
    mov cx, ehlehba ;bagana
    loopa:
        int 10h
        inc cx
        cmp cx,hhaa
        jne loopa
    cmp dx,shalgaha 
    jne yv1
    inc hhaa
    add shalgaha,3d
    inc ehlehba
    yv1:
    inc dx
    cmp dx,130d
    jne a
mov dx,122d
az: 
    mov cx, 45d
    loopaz:
        int 10h
        inc cx
        cmp cx,53d
        jl loopaz
    inc dx
    cmp dx,125d
    jne az
          
ret
ehlel dw 10
gol dw 50
duusahb dw 90
duusahm dw 142
ehlehb dw 18
hha dw 21  
shalgah dw 113  
ehlehba dw 48
hhaa dw 51  
shalgaha dw 113
ehlehbaa dw 50
hhaaa dw 47  
shalgahaa dw 113
             
             
             
             
             
             
            