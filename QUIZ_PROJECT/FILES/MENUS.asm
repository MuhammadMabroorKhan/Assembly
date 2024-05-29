     MENU PROC
           MOV AH,9
           LEA DX,QUIZ
           INT 21H
           
           LEA DX,A11
           INT 21H
           
           LEA DX,A12
           INT 21H
           
           LEA DX,ONE
           INT 21H
           
           LEA DX,TWO
           INT 21H
           
           LEA DX,THREE
           INT 21H
           
           LEA DX,FOUR
           INT 21H
           
           LEA DX,FIVE
           INT 21H
           
           LEA DX,CHOOSE
           INT 21H
  
           LEA DX,A13
           INT 21H
           
           LEA DX,A14
           INT 21H
           
           LEA DX,SPAC
           INT 21H

        RET
       MENU ENDP