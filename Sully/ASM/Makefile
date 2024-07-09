NASM = nasm
NFLAG = -f macho64
CC = cc

SRCS = ./Sully.s
OBJS = $(SRCS:.s=.o)
NAME = Sully

SRCS0 = ./Sully_0.s
OBJS0 = $(SRCS0:.s=.o)
NAME0 = Sully_0

SRCS1 = ./Sully_1.s
OBJS1 = $(SRCS1:.s=.o)
NAME1 = Sully_1

SRCS2 = ./Sully_2.s
OBJS2 = $(SRCS2:.s=.o)
NAME2 = Sully_2

SRCS3 = ./Sully_3.s
OBJS3 = $(SRCS3:.s=.o)
NAME3 = Sully_3

SRCS4 = ./Sully_4.s
OBJS4 = $(SRCS4:.s=.o)
NAME4 = Sully_4

SRCS5 = ./Sully_5.s
OBJS5 = $(SRCS5:.s=.o)
NAME5 = Sully_5

all : $(NAME)

$(NAME) : $(OBJS)
	$(CC) -o $@ $^ -lc

$(NAME0) : $(OBJS0)
	$(CC) -o $@ $^ -lc

$(NAME1) : $(OBJS1)
	$(CC) -o $@ $^ -lc

$(NAME2) : $(OBJS2)
	$(CC) -o $@ $^ -lc

$(NAME3) : $(OBJS3)
	$(CC) -o $@ $^ -lc

$(NAME4) : $(OBJS4)
	$(CC) -o $@ $^ -lc

$(NAME5) : $(OBJS5)
	$(CC) -o $@ $^ -lc

%.o : %.s
	$(NASM) $(NFLAG) $< -o $@

clean :
	rm -f $(OBJS) $(OBJS0) $(OBJS1) $(OBJS2) $(OBJS3) $(OBJS4) $(OBJS5)

fclean : clean
	rm -f $(SRCS0) ${SRCS1} ${SRCS2} ${SRCS3} ${SRCS4} ${SRCS5}
	rm -f $(NAME) $(NAME0) $(NAME1) $(NAME2) $(NAME3) $(NAME4) $(NAME5)

re : 
	make fclean
	make all

.PHONY : all clean fclean re
