SRC = hello.c

BIN = hello.exe

OBJ = hello.o

CC = clang

hello: hello.c
	$(CC) -g -o $@.exe $<

all: hello
	echo "finished"
	echo "done compiling $@, $#, $<"

clean:
	rm -rf *.exe *.o
