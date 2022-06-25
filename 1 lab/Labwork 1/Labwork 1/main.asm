start:
	SER R20; Set register (all bits)
	OUT DDRA,R20; Запись значения регистра в порт DDRA<-R20
	IN R21,PORTA;Считывание значения порта в регистр R21<-PORTA
	COM R21;Дополнение до 1
	OUT PORTA, R21; Запись значения регистра в порт
delay:  
	LDI  R19, 8; w  LDI - Load Immediate (load const)
	LDI  R18, 41; z  
	LDI  R17, 145; y  
	LDI  R16, 5; x 
delay_sub:  
	DEC  R16  
	BRNE  delay_sub
	DEC  R17  
	CP  R17, R19
	BRNE  delay_sub  
	DEC  R18  
	BRNE  delay_sub 
	NOP
rjmp start
