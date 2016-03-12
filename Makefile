CFLAGS=-Wall
LDFLAGS=-framework Cocoa -lcurl

OBJS=gr.o status.o util.o

ALL: grrr.a

grrr.a: $(OBJS)
	ar rs $@ $^

%.o : %.mm %.h
	g++ $(CFLAGS) -c -o $@ $<

status.o : status.cc status.h
	g++ $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJS) grrr.a
