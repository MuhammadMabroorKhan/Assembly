.MODEL SMALL
.STACK 100H
.DATA
    F1 DB 0AH,0DH,"     FIRST FUNCTION... => ",0AH,0DH,"$"
    F2 DB 0AH,0DH,"     SECOND FUNCTION... => ",0AH,0DH,"$"
    F DB 0AH,0DH,"   **********************",0AH,0DH,"$"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    ;CALL(KEYWORD) PROCDURE/FUNCTION_NAME
    
    CALL STARS
    
    CALL MY_FUNCTION_1
    
    CALL STARS
    
    CALL MY_FUNCTION_2
    
    CALL STARS
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP

;PROCEDURES

;FIRST PROCEDURE
    
    MY_FUNCTION_1 PROC
   
       MOV AH,9
       LEA DX,F1
       INT 21H
   
    RET
    MY_FUNCTION_1 ENDP

;SECOND PROCEDURE
    
    MY_FUNCTION_2 PROC
    
      MOV AH,9
      LEA DX,F2
      INT 21H
    
    RET
    MY_FUNCTION_2 ENDP

;THIRD PROCEDURE (***)
    
    STARS PROC
      
      MOV AH,9
      LEA DX,F
      INT 21H

    RET
    STARS ENDP

END MAIN