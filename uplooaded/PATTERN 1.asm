;   PATTERN 1
;   * * * * * * * * * *
;   * * * * * * * * * *
;   * * * * * * * * * *
;   * * * * INP * * * *
;   * * * * * * * * * *
;   * * * * * * * * * *
;   * * * * * * * * * *


.MODEL SMALL
.STACK 100H
.DATA
   MSG DB 0AH,0DH,"     ENTER THREE CHARACTERS => $"
   A DB 0AH,0DH,"       * * * * * * * * * *  $"
   B DB "       * * * * $"
   D DB " * * * * $"
   C DB 0AH,0DH,"$"

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
    
    MOV AH,2
    MOV DL,"?"
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV CL,AL
   
    INT 21H
    MOV BL,AL
    
    INT 21H
    MOV BH,AL
    
    MOV AH,9
    
    LEA DX,C
    INT 21H
    
    LEA DX,A
    INT 21H
    INT 21H
    INT 21H
 
    
    LEA DX,C
    INT 21H
    
    LEA DX,B
    INT 21H 
    
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    MOV DL,BL
    INT 21H
    
    MOV DL,BH
    INT 21H
    
    MOV AH,9
    LEA DX,D
    INT 21H

    LEA DX,A
    INT 21H
    INT 21H
    INT 21H
   
    
    MOV AH, 2                    
    MOV DL, 7H
    INT 21H

    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN 








