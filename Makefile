CC=gcc
CFLAGS=-g
OMPF=-fopenmp
PROGS=hello parfor seqfor parfloat seqfloat

all: $(PROGS)

hello: hello.c
	$(CC) $(CFLAGS) $(OMPF) -o $@ $^

parfor: parfor.c
	$(CC) $(CFLAGS) $(OMPF) -o $@ $^

parfloat: parfloat.c
	$(CC) $(CFLAGS) $(OMPF) -o $@ $^

#
# Sequential versions
#
seqfor: seqfor.c
	$(CC) $(CFLAGS) -o $@ $^

seqfloat: seqfloat.c
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm $(PROGS)
