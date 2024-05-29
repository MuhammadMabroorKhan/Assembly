;PRINT ASCII CHARACTER 80H TO 001H ....
.MODEL SMALL
.STACK 100H 
.CODE
MAIN PROC 
      
    MOV AH,2
    MOV BL,80H
    
    MOV CX,7
        
    REPEAT:
    MOV DL,BL
    INT 21H
    
    MOV DL,09
    INT 21H
    
    INC BL
    LOOP REPEAT
    
    MOV DL,0AH
    INT 21H
    INT 21H
    
    MOV DL,0DH
    INT 21H
    
    MOV CX,7
    
    CMP BL,0FFH
    JLE REPEAT
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

