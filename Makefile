SRCS=forcepid.c
OBJS=${SRCS:.c=.o}
SOBJS=${SRCS:.c=.so}
SOBJS32=${SRCS:.c=32.so}

CC=gcc
CFLAGS=-nostartfiles -fPIC -shared -Wl,-soname,xwrap.so -ldl -lX11

all: forcepid forcepid32

forcepid: clean
	$(CC) $(SRCS) $(CFLAGS) -o $(SOBJS)

forcepid32: clean
	$(CC) $(SRCS) $(CFLAGS) -m32 -o $(SOBJS32)

clean:
	rm -rf $(OBJS) $(SOBJS) $(SOBJS32)

install: forcepid forcepid32
	sudo cp $(SOBJS) /usr/lib64/$(SOBJS)
	sudo cp $(SOBJS32) /usr/lib32/$(SOBJS32)

uninstall:
	sudo rm /usr/lib64/$(SOBJS)
	sudo rm /usr/lib32/$(SOBJS32)
