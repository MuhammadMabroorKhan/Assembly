.MODEL SMALL
.STACK 100H
.DATA

;ALL MESSAGES 
INCLUDE FILES/DATA(MSG).ASM

.CODE
MAIN PROC 
    
    MOV AX,@DATA
	MOV DS,AX

PERFORM:    
    
    CALL MENU
    
    CALL INP
    
    CMP AL,'1'
    JE S_MAT
    
    CMP AL,'2'
    JE S_GK
    
    CMP AL,'3'
    JE S_ISLAMIC
    
    CMP AL,'4'
    JE S_CS
    
    JMP FINI
  S_MAT:
   
    CALL MATHS
    JMP FINI 
    
  S_GK:
    
    CALL GK
    JMP FINI
   
  S_ISLAMIC:
    
    CALL ISL
    JMP FINI
    
  S_CS:
    CALL GC
      
  FINI:	 
	MOV AH,4CH
	INT 21H
	MAIN ENDP
 
;;;;;;;;;;;;;;;;;;;;;;;;PROC;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
    INP PROC
           MOV AH,1
           INT 21H
           RET
    INP ENDP

;;FILES
INCLUDE FILES/MENUS.ASM
  
INCLUDE FILES/MY MATHS.ASM
  
INCLUDE FILES/GENERAL KNOWLEDGE.ASM

INCLUDE FILES/ISLAMIC.ASM
     
INCLUDE FILES/COMPUTER.ASM
  
END MAIN