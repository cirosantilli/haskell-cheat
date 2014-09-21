.PHONY: all clean

all:
	ghc main.hs
	ghc hello_world.hs

clean:
	rm -f main hello_world *.hi *.o

run: all
	./main
