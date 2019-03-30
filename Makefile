CC=gcc
TARGET=main
SRC=$(wildcard *.c)

OBJECT= ${SRC:.c=.o}
INCLUDES=-I/usr/include/alsa
LDFLAGS=-lasound

all:$(TARGET)

$(OBJECT):$(SRC)
	$(CC) -c $(INCLUDES) $<

$(TARGET):$(OBJECT)
	$(CC) -o $@ $< $(LDFLAGS)

.PHONY:clean

clean:
	@rm -rf $(OBJECT) $(TARGET) *~
