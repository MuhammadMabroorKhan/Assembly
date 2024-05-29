  ISL PROC
    
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
	
REPEAT_:
    MOV COUNT,0
	MOV AH,9
	LEA DX,MSG5
	INT 21H
	 
	CALL INP
	 
	CMP AL,0DH
	JE START_QUIZ1_
	 
	JMP REPEAT_
	 
START_QUIZ1_:
	 ;QUESTION1
	MOV AH,9
	LEA DX,IS1
	INT 21H

	LEA DX,ISA1
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK22_
	CMP AL,'a'
	JE R_ASK22_
	
	JMP W_ASK22_
	;RIGHT ANSER 1
 R_ASK22_:
    INC COUNT
    
     MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION2
	LEA DX,IS2
	INT 21H

	LEA DX,ISA2
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK33_
	CMP AL,'a'
	JE R_ASK33_
	
	JMP W_ASK33_

    ;WRONG ANSWER 1
 W_ASK22_:
    ADD COUNT,0
     
     ;QUESTION 2
     MOV AH,9
	LEA DX,MSG7
	INT 21H
	LEA DX,IS2
	INT 21H

	LEA DX,ISA2
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK33_
	CMP AL,'a'
	JE R_ASK33_
	
	JMP W_ASK33_
    
      ;RIGHT ANS 2 -> ASK QUESTION 3
 R_ASK33_:
       INC COUNT
    
     MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION3
	LEA DX,IS3
	INT 21H

	LEA DX,ISA3
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK44_
	CMP AL,'a'
	JE R_ASK44_
	
	JMP W_ASK44_
    ;WRONG ANS 2 -> ASK QUESTION 3
 W_ASK33_:
    ADD COUNT,0
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION3
	LEA DX,IS3
	INT 21H

	LEA DX,ISA3
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK44_
	CMP AL,'a'
	JE R_ASK44_
	
	JMP W_ASK44_
    
    
 R_ASK44_:
        INC COUNT 
           MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION4
	LEA DX,IS4
	INT 21H

	LEA DX,ISA4
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK55_
	CMP AL,'a'
	JE R_ASK55_
	
	JMP W_ASK55_
        
 W_ASK44_:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION4
	LEA DX,IS4
	INT 21H

	LEA DX,ISA4
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK55_
	CMP AL,'a'
	JE R_ASK55_
	
	JMP W_ASK55_
    
 R_ASK55_:
        INC COUNT 
           MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION5
	LEA DX,IS5
	INT 21H

	LEA DX,ISA5
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK66_
	CMP AL,'a'
	JE R_ASK66_
	
	JMP W_ASK66_
        
 W_ASK55_:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION5
	LEA DX,IS5
	INT 21H

	LEA DX,ISA5
	INT 21H
	
	CALL INP
	CMP AL,'A'
	JE R_ASK66_
	CMP AL,'a'
	JE R_ASK66_
	
	JMP W_ASK66_   
    

 R_ASK66_:
        INC COUNT 
           MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION6
	LEA DX,IS6
	INT 21H

	LEA DX,ISA6
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK77_
	CMP AL,'b'
	JE R_ASK77_
	
	JMP W_ASK77_
        
 W_ASK66_:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION6
	LEA DX,IS6
	INT 21H

	LEA DX,ISA6
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK77_
	CMP AL,'b'
	JE R_ASK77_
	
	JMP W_ASK77_    
    
     
   R_ASK77_:
        INC COUNT 
           MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION7
	LEA DX,IS7
	INT 21H

	LEA DX,ISA7
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK88_
	CMP AL,'b'
	JE R_ASK88_
	
	JMP W_ASK88_
        
 W_ASK77_:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION7
	LEA DX,IS7
	INT 21H

	LEA DX,ISA7
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK88_
	CMP AL,'b'
	JE R_ASK88_
	
	JMP W_ASK88_   
     
     
    R_ASK88_:
        INC COUNT 
           MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION8
	LEA DX,IS8
	INT 21H

	LEA DX,ISA8
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK99_
	CMP AL,'b'
	JE R_ASK99_
	
	JMP W_ASK99_
        
 W_ASK88_:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION8
	LEA DX,IS8
	INT 21H

	LEA DX,ISA8
	INT 21H
	
	CALL INP
	CMP AL,'B'
	JE R_ASK99_
	CMP AL,'b'
	JE R_ASK99_
	
	JMP W_ASK99_ 
     
     
   
   
   
       R_ASK99_:
        INC COUNT 
           MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION9
	LEA DX,IS9
	INT 21H

	LEA DX,ISA9
	INT 21H
	
	CALL INP
	CMP AL,'C'
	JE R_ASK100_
	CMP AL,'c'
	JE R_ASK100_
	
	JMP W_ASK100_
        
 W_ASK99_:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION9
	LEA DX,IS9
	INT 21H

	LEA DX,ISA9
	INT 21H
	
	CALL INP
	CMP AL,'C'
	JE R_ASK100_
	CMP AL,'c'
	JE R_ASK100_
	
	JMP W_ASK100_
	

	R_ASK100_:
        INC COUNT 
           MOV AH,9
	LEA DX,MSG6
	INT 21H
    ;QUESTION9
	LEA DX,IS10
	INT 21H

	LEA DX,ISA10
	INT 21H
	
	CALL INP
	CMP AL,'C'
	JE R_END100_
	CMP AL,'c'
	JE R_END100_
	
	JMP W_END100_
        
 W_ASK100_:
    ADD COUNT,0 
       
    MOV AH,9
	LEA DX,MSG7
	INT 21H
    ;QUESTION9
	LEA DX,IS10
	INT 21H

	LEA DX,ISA10
	INT 21H
	
	CALL INP
		CMP AL,'C'
	JE R_END100_
	CMP AL,'c'
	JE R_END100_
	
	JMP W_END100_
	
	R_END100_:
	 INC COUNT
	 
	   MOV AH,9
	LEA DX,MSG6
	INT 21H
	
	 JMP EXIT11_
	W_END100_:
	     ADD COUNT,0
	        MOV AH,9
	LEA DX,MSG7
	INT 21H
    EXIT11_:   
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
    JG TEN11_  
    
    ;COUNT<10 DISPLAY 
    MOV AH,9
    LEA DX,COUNT
    INT 21H
    
    JMP EXIT12_
    
    TEN11_:
    ;COUNT >= 10
    MOV AH,2
    MOV DL,'1'
    INT 21H
    
    MOV DL,'0'
    INT 21H
    
 EXIT12_:
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
   ISL ENDP