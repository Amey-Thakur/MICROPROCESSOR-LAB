DATA SEGMENT
	ARRAY DB 5,2,8,3,9,6,4,0,1,7
	LEN DW $-ARRAY
DATA ENDS

CODE SEGMENT
ASSUME DS:DATA CS:CODE
FILLY:
	MOV AX,DATA
	MOV DS,AX
	MOV CX,LEN-1
	SAAKSHI:
	LEA SI,ARRAY
	MOV BX,0
	ARCHIT:
	INC BX
	MOV AL,ARRAY[SI]
	INC SI
	CMP ARRAY[SI],AL
	JB MEGA
	XCHG AL,ARRAY[SI]
	MOV ARRAY[SI-1],AL
	MEGA:
	CMP BX,CX
	JL ARCHIT
	LOOP SAAKSHI
	MOV AH,4CH
	INT 21H
	CODE ENDS
END FILLY