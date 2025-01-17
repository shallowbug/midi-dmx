EXEC = midi-dmx
SRC = $(wildcard *.c)
OBJ = $(SRC:.c=.o)

CFLAGS += -g -std=gnu99 -O2 -W -Wall -Wextra
LDFLAGS += -lasound

all: $(EXEC)

$(EXEC): $(OBJ)
	$(CC) -o $@ $^ $(LDFLAGS)

%.o: %.c
	$(CC) $(CFLAGS) -c $<

clean:
	$(RM) *.o

mrproper: clean
	$(RM) $(EXEC)


