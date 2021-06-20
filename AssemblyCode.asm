.MODEL SMALL

.DATA
    VOWEL DB 0DH,0AH,'Entered character is VOWEL$' 
    ; 0Dh is the hexadecimal constant for the Carriage Return character in ASCII
    CONSONANT DB 0DH,0AH,'Entered character is CONSONANT$'
    ; 0Ah is the hexadecimal constant for the Line Feed character in ASCII
    msg DB 0DH,0AH,'Enter Character to Check Vowel or Consonent : $'
ENDS

.CODE  

    MOV AX,@DATA
    ; used to move data from memory ax register. 
    MOV DS,AX
    ; copied AX into DS
    LEA DX,msg
    MOV AH,9
    INT 21H
    MOV AH,1
    ; copied 5 into AH
    INT 21H
    ; if there is no character in the keyboard buffer, the function waits until any key is pressed. 
    ; It comes under type 21h of various interrput tables, hence the lines of code goes like these as you mentioned.
    CMP AL,'A'
    ; compares AL is equals to A
    JE VL
    ; if AL that means entered character is equals to A then this statement jumpes on VL and Vl part gets executed
    CMP AL,'E'
    JE VL
    CMP AL,'I'
    JE VL
    CMP AL,'O'
    JE VL
    CMP AL,'U'
    JE VL
    CMP AL,'a'
    JE VL
    CMP AL,'e'
    JE VL
    CMP AL,'i'
    JE VL
    CMP AL,'o'
    JE VL
    CMP AL,'u'
    JE VL
    JMP CT
    ; if above all statement beomes false then tis code jumps to CT

    CT:
        LEA DX,CONSONANT
        ;  load the CONSONENT of operand into the DX register.
        MOV AH,9
        ; DOS function 09 display a string of characters
        INT 21H
        JMP EXIT

    VL:
        LEA DX,VOWEL
        ;  load the VOWEL of operand into the DX register.
        MOV AH,9
        ; DOS function 09 display a string of characters
        INT 21H
        JMP EXIT
        ; it jumps to exit from code
    
    EXIT:
        MOV AH,4CH
        INT 21H
        ; The value 4C in hexadecimal is stored in the register AH. int 21h is the second line of assembler code. 
        ; The software interrupt 21h is called. This interrupt, 
        ; when given the value of 4ch in AH (as is the case here), causes the program to exit immediately.
ENDS
END