<div>
<h3>Program 6</h3>
</div>

---

### Write a LEX program to eliminate comment lines in a C program and copy the resulting program into a separate file.

Commands:
```
gedit program6a.l
gedit sample.c
```
```
gedit program6a.l
lex program6a.l
cc lex.yy.c -ll
./a.out sampple.c result.c
```

###  Write YACC program to recognize valid identifier, operators and keywords in the given text (C program) file.

Commands:
```
gedit program6b.l
gedit program6b.y
gedit example6b.c
```
```
lex program6b.l
yacc -d program6b.y
cc lex.yy.c y.tab.c -ll
./a.out
```