.MODEL SMALL 
.STACK 100H
.DATA   
        MSG DB 0AH,0DH," INPUT NEGETIVE NUMBER WITH [- SIGN] => -1 ",0AH,0DH,"$" 
        M1 DB 0AH,0DH," ENTER CHARACTER => $"
        M2 DB 0AH,0DH," IT'S POSITIVE$"
        M3 DB 0AH,0DH," IT'S NEGETIVE$"
.CODE 
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,MSG
    INT 21H
   
    LEA DX,M1
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    CMP BL,'-'
    JE MINUS
    
    JMP SKIP
 MINUS:
     
     MOV AH,1
     INT 21H
     MOV BL,AL
     
     NEG BL
        
 SKIP:   
    MOV AH,9
    
    TEST BL,80H
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

















