MATHS PROC
    
    LEA DX,MSG1
	MOV AH,9
	INT 21H
    
	LEA DX,MSG2
	MOV AH,9
	INT 21H
    
	LEA DX,MSG3
	MOV AH,9
	INT 21H
    
	LEA DX,MSG4
	MOV AH,9
	INT 21H
	
  REPEAT:
    MOV COUNT,0
	MOV AH,9
	LEA DX,MSG5
	INT 21H
	 
	CALL INP
	 
	CMP AL,0DH
	JE START_QUIZ
	 
	JMP REPEAT
	 
  START_QUIZ:
	 ;QUESTION1
	MOV AH,9
	LEA DX,Q1
	INT 21H

	LEA DX,QA1
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK2
	CMP AL,'a'
	JE R_ASK2
	
	JMP W_ASK2
	;RIGHT ANSER 1
  R_ASK2:
    INC COUNT
    
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION2
	LEA DX,Q2
	INT 21H

	LEA DX,QA2
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK3
	CMP AL,'b'
	JE R_ASK3
	
	JMP W_ASK3

    ;WRONG ANSWER 1
  W_ASK2:
    ADD COUNT,0
     
     ;QUESTION 2
    MOV AH,9
	LEA DX,MSG7
	INT 21H
	LEA DX,Q2
	INT 21H

	LEA DX,QA2
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK3
	CMP AL,'b'
	JE R_ASK3
	
	JMP W_ASK3
    
      ;RIGHT ANS 2 -> ASK QUESTION 3
  R_ASK3:
    INC COUNT
    
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION3
	LEA DX,Q3
	INT 21H

	LEA DX,QA3
	INT 21H
	
	CALL INP
	CMP AL,'C'
	JE R_ASK4
	CMP AL,'C'
	JE R_ASK4
	
	JMP W_ASK4
    ;WRONG ANS 2 -> ASK QUESTION 3
  W_ASK3:
    ADD COUNT,0
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION3
	LEA DX,Q3
	INT 21H

	LEA DX,QA3
	INT 21H
	
	CALL INP
	CMP AL,'C'
	JE R_ASK4
	CMP AL,'c'
	JE R_ASK4
	
	JMP W_ASK4
    
    
  R_ASK4:
    INC COUNT 
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION4
	LEA DX,Q4
	INT 21H

	LEA DX,QA4
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK5
	CMP AL,'b'
	JE R_ASK5
	
	JMP W_ASK5
        
   W_ASK4:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION4
	LEA DX,Q4
	INT 21H

	LEA DX,QA4
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK5
	CMP AL,'b'
	JE R_ASK5
	
	JMP W_ASK5
    
  R_ASK5:
    INC COUNT 
    
    MOV AH,9
	LEA DX,MSG6
	INT 21H
   
    ;QUESTION5
	LEA DX,Q5
	INT 21H

	LEA DX,QA5
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK6
	CMP AL,'a'
	JE R_ASK6
	
	JMP W_ASK6
        
  W_ASK5:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION5
	LEA DX,Q5
	INT 21H

	LEA DX,QA5
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK6
	CMP AL,'a'
	JE R_ASK6
	
	JMP W_ASK6   
    

  R_ASK6:
    INC COUNT 
    
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION6
	LEA DX,Q6
	INT 21H

	LEA DX,QA6
	INT 21H
	
	CALL INP
	CMP AL,'C'
	JE R_ASK7
	CMP AL,'c'
	JE R_ASK7
	
	JMP W_ASK7
        
  W_ASK6:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION6
	LEA DX,Q6
	INT 21H

	LEA DX,QA6
	INT 21H
	
	CALL INP
	CMP AL,'C'
	JE R_ASK7
	CMP AL,'c'
	JE R_ASK7
	
	JMP W_ASK7    
    
     
   R_ASK7:
    INC COUNT 
    
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION7
	LEA DX,Q7
	INT 21H

	LEA DX,QA7
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK8
	CMP AL,'b'
	JE R_ASK8
	
	JMP W_ASK8
        
  W_ASK7:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION7
	LEA DX,Q7
	INT 21H

	LEA DX,QA7
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK8
	CMP AL,'b'
	JE R_ASK8
	
	JMP W_ASK8   
     
     
  R_ASK8:
    INC COUNT 
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION8
	LEA DX,Q8
	INT 21H

	LEA DX,QA8
	INT 21H
	
	CALL INP
	CMP AL,'C'
	JE R_ASK9
	CMP AL,'c'
	JE R_ASK9
	
	JMP W_ASK9
        
  W_ASK8:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION8
	LEA DX,Q8
	INT 21H

	LEA DX,QA8
	INT 21H
	
	CALL INP
	CMP AL,'C'
	JE R_ASK9
	CMP AL,'c'
	JE R_ASK9
	
	JMP W_ASK9 

  R_ASK9:
    INC COUNT 
    
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION9
	LEA DX,Q9
	INT 21H

	LEA DX,QA9
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK10
	CMP AL,'a'
	JE R_ASK10
	
	JMP W_ASK10
        
  W_ASK9:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION9
	LEA DX,Q9
	INT 21H

	LEA DX,QA9
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK10
	CMP AL,'a'
	JE R_ASK10
	
	JMP W_ASK10
  
  R_ASK10:
    INC COUNT 
    
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION9
	LEA DX,Q10
	INT 21H

	LEA DX,QA10
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_END10
	CMP AL,'a'
	JE R_END10
	
	JMP W_END10
        
  W_ASK10:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    
    ;QUESTION9
	LEA DX,Q10
	INT 21H

	LEA DX,QA10
	INT 21H
	
	CALL INP
		CMP AL,'A'
	JE R_END10
	CMP AL,'a'
	JE R_END10
	
	JMP W_END10
	
  R_END10:
	INC COUNT 
	 
	MOV AH,9
	LEA DX,MSG6
	INT 21H
	
	JMP EXIT
  W_END10:
    ADD COUNT,0
	      
	MOV AH,9
	LEA DX,MSG7
	INT 21H
	
	
  EXIT:   
    MOV AH,9
    LEA DX,NL
    INT 21H
    
    LEA DX,MSG8
    INT 21H
    
    LEA DX,NL
    INT 21H
    
    LEA DX,MSG9
    INT 21H
    
    ADD COUNT,48
    
    CMP COUNT,'9'
    JG TEN  
    
    ;COUNT<10 DISPLAY 
    MOV AH,9
    LEA DX,COUNT
    INT 21H
    
    JMP EXIT1
    
  TEN:
    ;COUNT >= 10
    MOV AH,2
    MOV DL,'1'
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
  EXIT1:
    MOV AH,9
    LEA DX,NL
    INT 21H
    
    LEA DX,MSG10
    INT 21H
    
    CALL INP
    
    CMP AL,'1'
    JE PERFORM
    
    MOV AH,9
    LEA DX,MSG11
    INT 21H

    RET
    MATHS ENDP