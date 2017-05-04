SRC=$(wildcard *.c)
OBJS=$(SRC:.c=.o)

CFLAGS+=-I./

all: $(OBJS)

%.o: %.c 
	$(CC) -c -o $@ $(CFLAGS) $(MONGOOSE_OPTS) $< 


clean:
	rm -f *.o 

.PHONY: clean
