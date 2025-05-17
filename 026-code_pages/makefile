
app.exe: app.o
	gcc app.o -o app.exe -no-pie
app.o :app.s
	gcc -c app.s -o app.o
clean:
	del *.o *.exe