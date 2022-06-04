all: pgm.o	houghShared

houghShared:	houghShared.cu pgm.o
	nvcc houghShared.cu pgm.o -o houghShared

pgm.o:	common/pgm.cpp
	g++ -c common/pgm.cpp -o ./pgm.o
