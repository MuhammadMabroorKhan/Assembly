.MODEL SMALL
.STACK 100H
.DATA
    MSG DB 0AH,0DH,"    ENTER BETWEEN A-Z OR a-z $"
    A DB 0AH,0DH,"    ENTER A CHARACTER => $" 
    INV DB 0AH,0DH,"    INVALID - ENTER AGIAN : $"
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
  
  MOV AH,9
  LEA DX,MSG
  INT 21H 
  
  MOV AH,9
  LEA DX,A
  INT 21H 
  
AGAIN:  
  MOV AH,1
  INT 21H
  MOV DL,AL

  CMP DL, "A"   
  JB INVALID   
  CMP DL, "Z"  
  JBE CTOS  

  CMP DL, 61h  
  JB INVALID   
  CMP DL, 7Ah   
  JBE STOC    

  CMP DL, 30h   
  JB INVALID  
  CMP DL, 39h   
  JBE INVALID   

  JMP INVALID   

STOC:
  AND DL,0DFH ;SMALL TO CAPITAL
  MOV AH,2
  INT 21H
  JMP EXIT
   
CTOS:
 
  OR DL,20H  ;CAPITAL TO SMALL
  MOV AH,2
  INT 21H
  
  JMP EXIT
  
  INVALID:
   MOV AH,9
  LEA DX,INV
  INT 21H
  
  JMP AGAIN:
   
EXIT:  
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN




