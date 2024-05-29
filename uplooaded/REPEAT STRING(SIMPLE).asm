.MODEL SMALL
.STACK 100H
.DATA
    A DB 0AH,0DH,"REPEAT!!!$"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV CX,5
    
    MOV AH,9
    LEA DX,A
    
    REPEAT:
    INT 21H
    LOOP REPEAT
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN