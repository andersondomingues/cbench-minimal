all: conio
	gcc -o teste.exe src/main.c -Iinclude -Llib -lncurses -lm -lconio
	./teste.exe

conio:
	gcc -o conio.o -c src/conio.c -lncurses -lm -Iinclude -lncurses -lm 
	ar -crs lib/libconio.a conio.o

clean:
	rm -rf ./*.o ./*.exe

clean-full: 
	rm -rf ./*.o ./*.a ./*.exe
	rm -rf ./lib/*.a