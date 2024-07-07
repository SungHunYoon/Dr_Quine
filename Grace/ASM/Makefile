NASM = nasm
NFLAG = -f macho64
CC = cc
SRCS = ./Grace.s
OBJS = $(SRCS:.s=.o)
NAME = Grace
TEST_NAME = Grace_kid

all : $(NAME)

$(NAME) : $(OBJS)
	cc -o $@ $^ -lc

%.o : %.s
	$(NASM) $(NFLAG) $< -o $@

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
