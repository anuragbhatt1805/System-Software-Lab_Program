<div>
<h3>Program 2</h3>
</div>

---

### Develop, Implement and Execute a program using YACC tool to recognize all strings ending with b preceded by n a’s using the grammar a b

Commands:
```
gedit program2.l
gedit program2.y
```
```
lex program2.l
yacc -d program2.y
cc lex.yy.c y.tab.c -ll
./a.out
```