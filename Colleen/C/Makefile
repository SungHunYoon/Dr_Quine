CC = cc
CFLAGS = -Wall -Wextra -Werror
SRCS = ./Colleen.c
OBJS = $(SRCS:.c=.o)
NAME = Colleen
TEST_NAME = tmp_Colleen

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
	./$(NAME) > tmp_Colleen
	diff $(TEST_NAME) $(SRCS)

testclean:
	rm -f $(TEST_NAME)

.PHONY : all clean fclean re test testclean
