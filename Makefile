#CROSS=mipsel-uclibc-
CC=$(CROSS)gcc
LD=$(CROSS)ld
AR=$(CROSS)ar
RANLIB=$(CROSS)ranlib
CCFLAGS=-O2 -Wall -Wno-pointer-sign -fomit-frame-pointer
LDFLAGS=-s -lpthread -lssl

all:
	$(CC) $(CCFLAGS) $(LDFLAGS) -o ministun ministun.c

clean:
	rm -f *.o ministun
