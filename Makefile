TARGET  := lib/libv4l2.a
SRCS    := src/ccvt.c src/v4l2.c
OBJS    := ${SRCS:.c=.o} 
CC	= g++
CCFLAGS = -Wall -I include 
LDFLAGS = rcs

.PHONY: all clean distclean 
all:: ${TARGET} 

${TARGET}: ${OBJS} 
	ar ${LDFLAGS} -o $@ $^

${OBJS}: %.o: %.c
	${CC} ${CCFLAGS} -o $@ -c $< 
	
clean:: 
	-rm -f src/*~ src/*.o ${TARGET} 

distclean:: clean
