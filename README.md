<div>
<h3>System Software Lab Program (18CSL66)</h3>
</div>

---

## How to create the file

Make a text file
```
gedit sample.txt
```

Make a YACC/C file
```
gedit sample.c
```

Make a lex file
```
gedit sample.l
```

## How to execute the file

Execute a C/YACC file
```
gcc sample.c
./a.out
```

Execute a Lex file
```
lex sample.l
cc lex.yy.c -ll
./a.out
```
