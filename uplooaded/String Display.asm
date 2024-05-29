.MODEL SMALL
.STACK 100H
.DATA
;STRINGS
    STR1 DB 0AH,0DH," => Hello $"
    STR2 DB "World... $"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
;DISPLAY
    MOV AH,9
    
    LEA DX,STR1
    INT 21H
   
    LEA DX,STR2
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    