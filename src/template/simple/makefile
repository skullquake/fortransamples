FC=gfortran
FCFLAGS=-std=f95
SRC=./src/a.f90
BIN=./bin/a.out
$(BIN):$(SRC)
	$(FC)\
		$(SRC)\
		-o $(BIN)
run:$(BIN)
	$(BIN)
.phony:clean
clean:
	rm $(BIN)
