all: app.o display.o input.o
	gcc app.o display.o input.o -o app.exe
app.o :app.s
	gcc -c app.s -o app.o
display.o :display.s
	gcc -c display.s -o display.o
input.o :input.s
	gcc -c input.s -o input.o
clean:
	rm *exe 
run:
	./app.exe
