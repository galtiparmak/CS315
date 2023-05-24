parser: lex.yy.c y.tab.c 
	gcc -o parser y.tab.c
y.tab.c: CS315f22_team45.y
		yacc CS315f22_team45.y
lex.yy.c: CS315f22_team45.l
		lex CS315f22_team45.l