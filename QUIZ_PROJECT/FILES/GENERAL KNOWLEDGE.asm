  GK PROC
    
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
	
  REPEAT1:
    MOV COUNT,0
	MOV AH,9
	LEA DX,MSG5
	INT 21H
	 
	CALL INP
	 
	CMP AL,0DH
	JE START_QUIZ1
	 
	JMP REPEAT1
	 
  START_QUIZ1:
	 ;QUESTION1
	MOV AH,9
	LEA DX,P1
	INT 21H

	LEA DX,PA1
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK22
	CMP AL,'a'
	JE R_ASK22
	
	JMP W_ASK22
	;RIGHT ANSER 1
  R_ASK22:
    INC COUNT
    
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION2
	LEA DX,P2
	INT 21H

	LEA DX,PA2
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK33
	CMP AL,'a'
	JE R_ASK33
	
	JMP W_ASK33

    ;WRONG ANSWER 1
  W_ASK22:
    ADD COUNT,0
     
     ;QUESTION 2
    MOV AH,9
	LEA DX,MSG7
	INT 21H
	LEA DX,P2
	INT 21H

	LEA DX,PA2
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK33
	CMP AL,'a'
	JE R_ASK33
	
	JMP W_ASK33
    
      ;RIGHT ANS 2 -> ASK QUESTION 3
  R_ASK33:
    INC COUNT
    
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION3
	LEA DX,P3
	INT 21H

	LEA DX,PA3
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK44
	CMP AL,'a'
	JE R_ASK44
	
	JMP W_ASK44
    ;WRONG ANS 2 -> ASK QUESTION 3
  W_ASK33:
    ADD COUNT,0
    
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION3
	LEA DX,P3
	INT 21H

	LEA DX,PA3
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK44
	CMP AL,'a'
	JE R_ASK44
	
	JMP W_ASK44

  R_ASK44:
    INC COUNT 
    
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    
    ;QUESTION4
	LEA DX,P4
	INT 21H

	LEA DX,PA4
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK55
	CMP AL,'a'
	JE R_ASK55
	
	JMP W_ASK55
        
  W_ASK44:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION4
	LEA DX,P4
	INT 21H

	LEA DX,PA4
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK55
	CMP AL,'a'
	JE R_ASK55
	
	JMP W_ASK55
    
  R_ASK55:
    INC COUNT 
   
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    
    ;QUESTION5
	LEA DX,P5
	INT 21H

	LEA DX,PA5
	INT 21H
	
	CALL INP
	
	CMP AL,'B'
	JE R_ASK66
	CMP AL,'b'
	JE R_ASK66
	
	JMP W_ASK66
        
  W_ASK55:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION5
	LEA DX,P5
	INT 21H

	LEA DX,PA5
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK66
	CMP AL,'b'
	JE R_ASK66
	
	JMP W_ASK66   
    

  R_ASK66:
    INC COUNT 
    
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    
    ;QUESTION6
	LEA DX,P6
	INT 21H

	LEA DX,PA6
	INT 21H
	
	CALL INP
	
	CMP AL,'B'
	JE R_ASK77
	CMP AL,'b'
	JE R_ASK77
	
	JMP W_ASK77
        
  W_ASK66:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    
    ;QUESTION6
	LEA DX,P6
	INT 21H

	LEA DX,PA6
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK77
	CMP AL,'b'
	JE R_ASK77
	
	JMP W_ASK77    
    
  R_ASK77:
    INC COUNT 
    
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    
    ;QUESTION7
	LEA DX,P7
	INT 21H

	LEA DX,PA7
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK88
	CMP AL,'b'
	JE R_ASK88
	
	JMP W_ASK88
        
  W_ASK77:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    
    ;QUESTION7
	LEA DX,P7
	INT 21H

	LEA DX,PA7
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK88
	CMP AL,'b'
	JE R_ASK88
	
	JMP W_ASK88   
     
     
  R_ASK88:
    INC COUNT 
    
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION8
	LEA DX,P8
	INT 21H

	LEA DX,PA8
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK99
	CMP AL,'b'
	JE R_ASK99
	
	JMP W_ASK99
        
  W_ASK88:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
   
    ;QUESTION8
	LEA DX,P8
	INT 21H

	LEA DX,PA8
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK99
	CMP AL,'b'
	JE R_ASK99
	
	JMP W_ASK99 
     
  R_ASK99:
    INC COUNT 
    
    MOV AH,9
	LEA DX,MSG6
	INT 21H
    
    ;QUESTION9
	LEA DX,P9
	INT 21H

	LEA DX,PA9
	INT 21H
	
	CALL INP
	
	CMP AL,'B'
	JE R_ASK100
	CMP AL,'b'
	JE R_ASK100
	
	JMP W_ASK100
        
 W_ASK99:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
   
    ;QUESTION9
	LEA DX,P9
	INT 21H

	LEA DX,PA9
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK100
	CMP AL,'b'
	JE R_ASK100
	
	JMP W_ASK100

  R_ASK100:
    INC COUNT 
   
    MOV AH,9
	LEA DX,MSG6
	INT 21H
   
    ;QUESTION9
	LEA DX,P10
	INT 21H

	LEA DX,PA10
	INT 21H
	
	CALL INP
	
	CMP AL,'C'
	JE R_END100
	CMP AL,'c'
	JE R_END100
	
	JMP W_END100
        
  W_ASK100:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
   
    ;QUESTION9
	LEA DX,P10
	INT 21H

	LEA DX,PA10
	INT 21H
	
	CALL INP
	
	CMP AL,'C'
	JE R_END100
	CMP AL,'c'
	JE R_END100
	
	JMP W_END100
	
  R_END100:
	INC COUNT
	 
	MOV AH,9
	LEA DX,MSG6
	INT 21H
	 
	JMP EXIT11
	
  W_END100: 
	ADD COUNT,0
	  
	MOV AH,9
	LEA DX,MSG7
	INT 21H
	   
  EXIT11:   
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
    JG TEN11  
    
    ;COUNT<10 DISPLAY 
    MOV AH,9
    LEA DX,COUNT
    INT 21H
    
    JMP EXIT12
    
  TEN11:
    ;COUNT >= 10
    MOV AH,2
    MOV DL,'1'
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
  EXIT12:
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
   GK ENDP
   