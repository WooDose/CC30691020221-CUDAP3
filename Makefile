all: pgm.o	houghConstnat

houghConstnat:	houghConstnat.cu pgm.o
	nvcc houghConstnat.cu pgm.o -o houghConstnat

pgm.o:	common/pgm.cpp
	g++ -c common/pgm.cpp -o ./pgm.o
