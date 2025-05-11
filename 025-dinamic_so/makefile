all:app.o print.o input.o
	gcc app.o print.o input.o -o app.exe
app.o :app.s
	gcc -c app.s -o app.o
print.o :print.s
	gcc -c print.s -o print.o
input.o :input.s
	gcc -c input.s -o input.o
run:
	./app.exe
clean:
	rm -rf *.exe *.o
