.MODEL SMALL
.STACK 100H
.DATA
     M1 DB 0AH,0DH,"    ENTER 0 or 1 => $"
     MSG DB 10,13,"    YOU HAVE ENTERED => $"
     ERROR DB 0AH,0DH,"    WRONG INPUT : PLEASE ENTER 0 OR 1 ",0AH,0DH,"$"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
REPEAT:       
    XOR BX,BX
    
    MOV AH,9
    LEA DX,M1
    INT 21H
    
    MOV AH,1
    
INPUT:
    INT 21H
    CMP AL,"0"
    JE CONTINUE
    
    CMP AL,"1"
    JE CONTINUE
    
    CMP AL,0DH
    JE END_INPUT
        
    JMP WRONG
CONTINUE:
    SHL BX,1
    SUB AL,30H
    OR BL,AL
    JMP INPUT
    
END_INPUT:
    MOV CX,16
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
PRINT:
    ROL BX,1
    JC DISPONE
    MOV DL,'0'
    MOV AH,2
    INT 21H
    
    LOOP PRINT
    JMP EXIT
    
DISPONE:
    MOV DL,'1'
    MOV AH,2         
    
    INT 21H
    LOOP PRINT
    JMP EXIT
WRONG:
    MOV AH,9
    LEA DX,ERROR
    INT 21H
    
    JMP REPEAT   
EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN