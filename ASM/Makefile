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

$(GRACE) : $(GRACE_OBJS)
	$(CC) -o $@ $^ -lc

$(SULLY) : $(SULLY_OBJS)
	$(CC) -o $@ $^ -lc

%.o : %.s
	$(NASM) $(NFLAG) $< -o $@

clean :
	rm -f $(COLLEEN_OBJS) $(GRACE_OBJS) $(SULLY_OBJS) tmp_Colleen Grace_kid.s Sully_*

fclean : clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY)

re : 
	make fclean
	make all

.PHONY : all clean fclean re
