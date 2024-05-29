.MODEL SMALL
.STACK 100H
.DATA
   MSG DB 0AH,0DH,"       ENTER BETWEEN A TO F $"
   A DB 0AH,0DH,"       ENTER A HEX DIGIT => $"
   B DB 0AH,0DH,"       IN DECIMAL IT IS  => 1$"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    LEA DX,A
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH,AL

    MOV AH,9
    LEA DX,B
    INT 21H
    
    MOV AH,2
    MOV DL,BH
    SUB DL,11H
    INT 21H

    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN  
