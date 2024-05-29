.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 0AH,0DH,"     ENTER 1st NUMBER => $"
    MSG2 DB 0AH,0DH,"     ENTER 2nd NUMBER => $"
    MSG3 DB 0AH,0DH,"     SUM OF $"
    MSG3_1 DB " AND $"
    MSG3_2 DB " IS => $"
    MSG4 DB 0AH,0DH,"     INVALID INPUT.....TRY AGAIN  $"
    NO1 DB 0
    NO2 DB 0
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX

REPEAT:    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV NO1,AL
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV NO2,AL
    
    CMP NO1,'0'
    JL INVALID
    
    CMP NO1,'9'
    JG INVALID
    
    CMP NO2,'0'
    JL INVALID
    
    CMP NO2,'9'
    JG INVALID
    
    MOV AH,9
    LEA DX,MSG3
    INT 21H
    
    MOV AH,2
    MOV DL,NO1
    INT 21H
    
    MOV AH,9
    LEA DX,MSG3_1
    INT 21H
    
    MOV AH,2
    MOV DL,NO2
    INT 21H
    
    MOV AH,9
    LEA DX,MSG3_2
    INT 21H
    
    MOV AH,2
    MOV DL,NO1
    ADD DL,NO2
    SUB DL,30H
    
    CMP DL,'9'
    JG GREATER
    
    INT 21H
    
    JMP EXIT
GREATER:    
    MOV AH,2
    MOV BL,DL
    MOV DL,'1'
    INT 21H 
    
    MOV DL,BL
    SUB DL,10D
    INT 21H
    JMP EXIT
INVALID:
    
    MOV AH,9
    LEA DX,MSG4
    INT 21H
    
    JMP REPEAT 

EXIT:    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
    