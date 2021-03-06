all: myapp

myapp: main.o a_functions.o b_functions.o c_functions.o d_functions.o
	gcc -o myapp main.o a_functions.o b_functions.o c_functions.o d_functions.o
main.o: main.c main.h
	gcc -c main.c
a_functions.o: a_functions.c a.h
	gcc -c a_functions.c
b_functions.o: b_functions.c b.h
	gcc -c b_functions.c

c_functions.o: c_functions.c c.h
	gcc -c c_functions.c

d_functions.o: d_functions.c d.h
	gcc -c d_functions.c

clean: 
	rm -rf *.o myapp

install: myapp
	cp myapp /usr/local/bin/myapp

uninstall: myapp
	rm /usr/local/bin/myapp