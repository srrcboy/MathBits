CPPFLAGS=-I../
CFLAGS= -g -Wall -O2 -finline-functions
CXXFLAGS= $(CFLAGS)

OBJS=   quartic.o \
	rpoly.o

libmathbits.a: $(OBJS)
	$(AR) rvs $@ $^

clean:
	$(RM) $(OBJS)
	$(RM) libmathbits.a

