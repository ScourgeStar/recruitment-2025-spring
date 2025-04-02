CFLAG = -Ofast -g -Wall -fopenmp -mavx512f -mfma -march=native -funroll-loops -DNDEBUG

all:
	g++ driver.cc winograd.cc -std=c++11 ${CFLAG} -o winograd

clean:
	rm -f winograd