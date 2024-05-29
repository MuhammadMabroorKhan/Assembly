.MODEL SMALL
.STACK 100H
.DATA
    M1 DB 0AH,0DH,"     ENTER CHARACTER => $"
    M2 DB 0AH,0DH,"     IT'S POS EVEN$"
    M3 DB 0AH,0DH,"     IT'S POS ODD$"
    M4 DB 0AH,0DH,"     IT'S NEG EVEN$"
    M5 DB 0AH,0DH,"     IT'S NEG ODD$"

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
    
    CMP BL,'-'
    JE MINUS
    
    JMP SKIP
 
 MINUS:
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV AH,9
     
    TEST BL,01H
    JZ N_EVEN
     
    TEST BL,80H
    JZ N_ODD
        
 SKIP:     
 
    MOV AH,9
    
    TEST BL,01H
    JZ EVEN
    
    TEST BL,80H
    JZ ODD 
    
    JMP N_ODD
 
 EVEN:
    
    TEST BL,80H
    JZ P_EVEN
       
    TEST BL,80H
    JNE N_EVEN  
  
 P_EVEN:
   
    LEA DX,M2
    INT 21H
   
    JMP EXIT 
  
 N_EVEN:
  
    LEA DX,M4
    INT 21H
  
    JMP EXIT 

 ODD:
  
    TEST BL,01H
    JZ P_ODD
  
 P_ODD:
   
    LEA DX,M3
    INT 21H
    
    JMP EXIT
 
 N_ODD:
 
    LEA DX,M5
    INT 21H     
 
 EXIT:
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN

