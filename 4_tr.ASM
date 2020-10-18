ASSUME CS:CODE,DS:DATA
DATA SEGMENT
DATA ENDS
CODE SEGMENT
START:
      MOV SI,1000H
      MOV CL,04H
      MOV AL,01H
L1:   MOV [SI],AL
      INC AL
      INC SI
      LOOP L1
      MOV BX,00H
      MOV AH,00H
      MOV SI,1000H
      MOV CL,04H
L2:   MOV AL,[SI]
      MUL AL
      ADD BX,AX
      INC SI
      LOOP L2
      MOV AX,BX
      MOV CL,04H
      DIV CL
      NOP
      CODE ENDS                         
      END START
