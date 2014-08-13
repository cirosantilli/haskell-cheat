.PHONY: all clean

run: all
	./main

all:
	ghc main.hs

clean:
	rm -f main main.hi main.o
