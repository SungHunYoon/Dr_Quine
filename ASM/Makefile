NASM = nasm
NFLAG = -f macho64
CC = cc

COLLEEN_SRCS = ./Colleen.s
COLLEEN_OBJS = $(COLLEEN_SRCS:.s=.o)
COLLEEN = Colleen

GRACE_SRCS = ./Grace.s
GRACE_OBJS = $(GRACE_SRCS:.s=.o)
GRACE = Grace

SULLY_SRCS = ./Sully.s
SULLY_OBJS = $(SULLY_SRCS:.s=.o)
SULLY = Sully

all : $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN) : $(COLLEEN_OBJS)
	$(CC) -o $@ $^ -lc
	rm -f $(COLLEEN_OBJS)

$(GRACE) : $(GRACE_OBJS)
	$(CC) -o $@ $^ -lc
	rm -f $(GRACE_OBJS)

$(SULLY) : $(SULLY_OBJS)
	$(CC) -o $@ $^ -lc
	rm -f $(SULLY_OBJS)

%.o : %.s
	$(NASM) $(NFLAG) $< -o $@

clean :
	rm -f tmp_Colleen Grace_kid.s Sully_*

fclean : clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY)

re : 
	make fclean
	make all

.PHONY : all clean fclean re
