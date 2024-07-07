CC = cc
CFLAGS = -Wall -Wextra -Werror
SRCS = ./Grace.c
OBJS = $(SRCS:.c=.o)
NAME = Grace
TEST_NAME = Grace_kid.c

all : $(NAME)

$(NAME) : $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean :
	rm -f $(OBJS)

fclean : clean
	rm -f $(NAME)

re : 
	make fclean
	make all

test :
	./$(NAME)
	diff $(TEST_NAME) $(SRCS)

testclean:
	rm -f $(TEST_NAME)

.PHONY : all clean fclean re test testclean
