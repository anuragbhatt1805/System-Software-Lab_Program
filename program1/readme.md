<div>
<h3>Program 1</h3>
</div>

---

### Write a LEX program to recognize valid arithmetic expression.

Commands:
```
gedit program1a.l
```
```
gedit program1a.l
lex program1a.l
cc lex.yy.c -ll
./a.out
```

### Write YACC program to evaluate arithmetic expression involving operators: +, -,*, and /

Commands:
```
gedit program1b.l
gedit program1b.y
```
```
lex program1b.l
yacc -d program1b.y
cc lex.yy.c y.tab.c -ll
./a.out
```