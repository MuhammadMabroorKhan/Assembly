.MODEL SMALL
.STACK 100H
.DATA  
 A DB "ENTER THE STRING: $"
 B DB 0AH,0DH,"ITS REVERSE: $"
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, A
    INT 21H
    
    XOR CX, CX
    MOV AH, 1 
    
    INPUT:
    INT 21H
    
    CMP AL, 0DH
    JE END_INPUT
    
    PUSH AX
    INC CX
    
    JMP INPUT
    
    END_INPUT:
    MOV AH, 9
    LEA DX, B
    INT 21H
    
    MOV AH, 2 
    
    DISPLAY:
    POP DX
    INT 21H
    LOOP DISPLAY:
   
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN