.MODEL SMALL
.STACK 100H
.DATA 
      N1 DB 0AH,0DH,"   ENTER 1st NUMBER => $"
      N2 DB 0AH,0DH,"   ENTER 2nd NUMBER => $"
      B DB 0AH,0DH,"   SECOND NUMBER IS GREATER...$"
      D DB 0AH,0DH,"   First Number is Greater...$ "
      E DB 0AH,0DH,"   BOTH NUMBERS ARE EQUAL...$"
.CODE
MAIN PROC
   MOV AX,@DATA
   MOV DS,AX 
          
     MOV AH,9
     LEA DX,N1
     INT 21H
           
     MOV AH,1
     INT 21H
     MOV BL,AL
          
     MOV AH,9
     LEA DX,N2
     INT 21H
          
     MOV AH,1
     INT 21H
     MOV BH,AL            
          
     CMP BL,BH
     JE EQUALS
          
     CMP BL,BH
     JG PRINT  
          
     MOV AH,9
     LEA DX,B
     INT 21H 
          
     JMP EXIT
               
 PRINT:
     MOV AH,9
     LEA DX,D
     INT 21H 
          
     JMP EXIT
 EQUALS:
      
     MOV AH,9
     LEA DX,E
     INT 21H 
 
 EXIT:

    MOV AH,4CH
    INT 21H
   
    MAIN ENDP
END MAIN
