CC = arm-linux-gnueabi-gcc
CFLAGS = -mcpu=arm966e-s -g

all: my.elf

my.elf: my.c
	$(CC) $(CFLAGS) -o $@ $<
