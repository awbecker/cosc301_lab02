.PHONY: clean

CC=clang
CFLAGS=-I. -g -Wall
OBJS=lab02.o
TARGET=lab02

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $(TARGET) $^ $(CFLAGS)

clean:
	rm -f $(TARGET) $(OBJS) *~

%.o: %.c $(DEPS)
	$(CC) -c $< $(CFLAGS) 
