org 100h

jmp start       ; jump over data declaration

msg:    db      0dh,0ah,"1-Add",0dh,0ah,"2-Multiply",0dh,0ah,"3-Subtract",0dh,0ah,"4-Divide", 0Dh,0Ah, '$'
msg2:    db      0dh,0ah,"Enter First No : $"
msg3:    db      0dh,0ah,"Enter Second No : $"
msg4:    db      0dh,0ah,"Choice Error $" 
msg5:    db      0dh,0ah,"Result : $" 
msg6:    db      0dh,0ah ,'thank you for using the calculator! press any key... ', 0Dh,0Ah, '$'
 op1 dw ?
 op2 dw ?
 bvhel dw ?


start:  mov ah,9
        mov dx, offset msg 
        int 21h
        mov ah,0                       
        int 16h  
        cmp al,31h ;the keypress will be stored in al so, we will comapre to 1 addition ..........
        je Addition
        cmp al,32h
        je Multiply
        cmp al,33h
        je Subtract
        cmp al,34h
        je Divide
        mov ah,09h
        mov dx, offset msg4
        int 21h
        mov ah,0
        int 16h
        jmp start
        
Addition:   mov ah,09h  ;then let us handle the case of addition operation
            mov dx, offset msg2  ;first we will display this message enter first no also using int 21h
            int 21h
            mov cx,0 ;we will call InputNo to handle our input as we will take each number seprately
            call InputNo  ;first we will move to cx 0 because we will increment on it later in InputNo
            push dx
            mov ah,9
            mov dx, offset msg3
            int 21h 
            mov cx,0
            call InputNo
            pop bx
            add dx,bx
            push dx 
            mov ah,9
            mov dx, offset msg5
            int 21h
            mov cx,10000
            pop dx
            call View 
            jmp start 
            
InputNo:    mov ah,0
            int 16h ;then we will use int 16h to read a key press     
            mov dx,0  
            mov bx,1 
            cmp al,0dh ;the keypress will be stored in al so, we will comapre to  0d which represent the enter key, to know wheter he finished entering the number or not 
            je FormNo ;if it's the enter key then this mean we already have our number stored in the stack, so we will return it back using FormNo
            sub ax,30h ;we will subtract 30 from the the value of ax to convert the value of key press from ascii to decimal
            call ViewNo ;then call ViewNo to view the key we pressed on the screen
            mov ah,0 ;we will mov 0 to ah before we push ax to the stack bec we only need the value in al
            push ax  ;push the contents of ax to the stack
            inc cx   ;we will add 1 to cx as this represent the counter for the number of digit
            jmp InputNo ;then we will jump back to input number to either take another number or press enter          
   

;we took each number separatly so we need to form our number and store in one bit for example if our number 235
FormNo:     pop ax  
            push dx      
            mul bx
            pop dx
            add dx,ax
            mov ax,bx       
            mov bx,10
            push dx
            mul bx
            pop dx
            mov bx,ax
            dec cx
            cmp cx,0
            jne FormNo
            ret   


       
       
View:  mov ax,dx
       mov dx,0
       div cx 
       call ViewNo
       mov bx,dx 
       mov dx,0
       mov ax,cx 
       mov cx,10
       div cx
       mov dx,bx 
       mov cx,ax
       cmp ax,0
       jne View
       ret
            


ViewNo:    push ax ;we will push ax and dx to the stack because we will change there values while viewing then we will pop them back from
           push dx ;the stack we will do these so, we don't affect their contents
           mov dx,ax ;we will mov the value to dx as interrupt 21h expect that the output is stored in it
           add dl,30h ;add 30 to its value to convert it back to ascii
           mov ah,2
           int 21h
           pop dx  
           pop ax
           ret
      
   
            
                       
Multiply:   mov ah,09h
            mov dx, offset msg2
            int 21h
            mov cx,0
            call InputNo
            mov [200],dx
            mov ah,9
            mov dx, offset msg3
            int 21h 
            mov cx,0
            call InputNo
            mov bx,[200]
            mov ax,dx
            mul bx 
            mov bvhel,ax
            mov [201],dx
            call decr
            jmp start 


Subtract:   mov ah,09h
            mov dx, offset msg2
            int 21h
            mov cx,0
            call InputNo
            push dx
            mov ah,9
            mov dx, offset msg3
            int 21h 
            mov cx,0
            call InputNo
            pop bx
            sub bx,dx
            mov dx,bx
            push dx 
            mov ah,9
            mov dx, offset msg5
            int 21h
            mov cx,10000
            pop dx
            call View 
            jmp start
    
            
Divide:     mov ah,09h
            mov dx, offset msg2
            int 21h
            mov cx,0
            call InputNo
            push dx
            mov ah,9
            mov dx, offset msg3
            int 21h 
            mov cx,0
            call InputNo
            pop bx
            mov ax,bx
            mov op1,bx
            mov cx,dx 
            mov op2,dx
            mov dx,0
            mov bx,0
            div cx  
            mov [201],al
            mov bx,dx
            mov dx,ax
            push bx 
            push dx 
            mov ah,9
            mov dx, offset msg5
            int 21h
            mov cx,10000
            pop dx
            call View
            pop bx
            cmp bx,0
            je start
            
            
            
            call butarhai 
            jmp start             
                         
                         
Butarhai:
mov ax,[201] 
mul op2
sub op1,ax
mov ax,op1
mov dx,100
mul dx
div op2 
mov op1,ax 

mov dl,'.'
mov ah,02h
int 21h 
  
mov ax,op1
aam
mov [200],ax
mov al,ah
aam
mov bl,al
mov al,bl
add al,30h 
mov dl, al
mov ah,02h
int 21h
mov ax,[200]  
mov ah,0
add ax, 3030h 
mov dl,al
mov ah,02h
int 21h
ret   

decr:   

mov ah,9
mov dx, offset msg5
int 21h 
mov ax,bvhel
mov dx,[201]
mov bx,10000
div bx

mov op1,dx
aam
mov [200],ax
mov al,ah
aam

mov bl,al
mov al,bl
add al,30h 
mov dl, al
mov ah,02h
int 21h

mov ax,[200]  
mov ah,0
add ax, 3030h 
mov dl,al
mov ah,02h
int 21h 

mov ax,op1 
mov dx,00
mov bx,1000
div bx
mov op1,dx
add al,30h
mov dl,al
mov ah,02h
int 21h 
mov ax,op1 
mov dx,00
mov bx,100
div bx
mov op1,dx
add al,30h
mov dl,al
mov ah,02h
int 21h
mov ax,op1 
mov dx,00
mov bx,10
div bx
mov op1,dx
add al,30h
mov dl,al
mov ah,02h
int 21h 

mov ax,op1 
mov dx,00
add al,30h
mov dl,al
mov ah,02h
int 21h
       
ret