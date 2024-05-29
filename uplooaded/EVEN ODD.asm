.MODEL SMALL 
.STACK 100H
.DATA
        M1 DB 0AH,0DH," ENTER CHARACTER => $"
        M2 DB 0AH,0DH," IT'S EVEN$"
        M3 DB 0AH,0DH," IT'S ODD$"
.CODE 
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,M1
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,9
    
    TEST BL,01H
    JZ PR_EVEN
    
    LEA DX,M3
    INT 21H
    
    JMP EXIT
PR_EVEN:

    LEA DX,M2
    INT 21H
     
EXIT:
     
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN