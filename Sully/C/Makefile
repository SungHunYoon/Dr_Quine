CC = cc
CFLAGS = -Wall -Wextra -Werror

SRCS = ./Sully.c
OBJS = $(SRCS:.c=.o)
NAME = Sully

SRCS0 = ./Sully_0.c
OBJS0 = $(SRCS0:.c=.o)
NAME0 = Sully_0

SRCS1 = ./Sully_1.c
OBJS1 = $(SRCS1:.c=.o)
NAME1 = Sully_1

SRCS2 = ./Sully_2.c
OBJS2 = $(SRCS2:.c=.o)
NAME2 = Sully_2

SRCS3 = ./Sully_3.c
OBJS3 = $(SRCS3:.c=.o)
NAME3 = Sully_3

SRCS4 = ./Sully_4.c
OBJS4 = $(SRCS4:.c=.o)
NAME4 = Sully_4

SRCS5 = ./Sully_5.c
OBJS5 = $(SRCS5:.c=.o)
NAME5 = Sully_5

all : $(NAME)

$(NAME) : $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

$(NAME0) : $(OBJS0)
	$(CC) $(CFLAGS) -o $@ $^

$(NAME1) : $(OBJS1)
	$(CC) $(CFLAGS) -o $@ $^

$(NAME2) : $(OBJS2)
	$(CC) $(CFLAGS) -o $@ $^

$(NAME3) : $(OBJS3)
	$(CC) $(CFLAGS) -o $@ $^

$(NAME4) : $(OBJS4)
	$(CC) $(CFLAGS) -o $@ $^

$(NAME5) : $(OBJS5)
	$(CC) $(CFLAGS) -o $@ $^

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean :
	rm -f $(OBJS) $(OBJS0) $(OBJS1) $(OBJS2) $(OBJS3) $(OBJS4) $(OBJS5)

fclean : clean
	rm -f $(SRCS0) ${SRCS1} ${SRCS2} ${SRCS3} ${SRCS4} ${SRCS5}
	rm -f $(NAME) $(NAME0) $(NAME1) $(NAME2) $(NAME3) $(NAME4) $(NAME5)

re : 
	make fclean
	make all

.PHONY : all clean fclean re
