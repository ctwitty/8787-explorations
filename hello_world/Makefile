CC = arm-linux-gnueabi-gcc
CFLAGS = -mcpu=arm966e-s -ggdb

all: my.elf sleepy.elf simplest.elf

sleepy.elf: sleepy.c
	$(CC) $(CFLAGS) -o $@ $< -e main

simplest.elf: simplest.c
	$(CC) $(CFLAGS) -o $@ $< -e main

