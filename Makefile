#=======================================================================
#
# Makefile
# --------
# File for building the hc256 implementation.
#=======================================================================

SRC = test.c
INC_SRC =  hc.h hc256.c

CC = clang
CC_FLAGS = -Wall -O2
ASM = yasm


all: test


test:	$(SRC) $(INC_SRC)
	$(CC) $(CC_FLAGS) -o test $(SRC) -I $(INC_SRC)


clean:
	rm test
