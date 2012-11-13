CC=gcc
CFLAGS=-g
PROGS=hello parfor seqfor parfloat seqfloat

all: $(PROGS)

hello: hello.c
	$(CC) $(CFLAGS) -fopenmp -o $@ $^

parfor: parfor.c
	$(CC) $(CFLAGS) -fopenmp -o $@ $^

#
# Sequential versions
#
seqfor: seqfor.c
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm $(PROGS)
