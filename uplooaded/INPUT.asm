.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 0AH,0DH,"    ENTER ANY CHARACTER => $"
    MSG2 DB 0AH,0DH,"    YOU ENTERED => $"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    ;DISPLAY MESSAGE 1
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    ;TAKING INPUT
    MOV AH,1
    INT 21H
   
    ;STORE INPUT IN BL
    MOV BL,AL
    
    ;DISPLAY MESSAGE 2
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    ;DISPLAY INPUT
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    