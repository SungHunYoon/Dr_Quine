NASM = nasm
NFLAG = -f macho64
CC = cc
SRCS = ./Colleen.s
OBJS = $(SRCS:.s=.o)
NAME = Colleen
TEST_NAME = tmp_Colleen

all : $(NAME)

$(NAME) : $(OBJS)
	$(CC) -o $@ $^ -lc

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
	./$(NAME) > tmp_Colleen
	diff $(TEST_NAME) $(SRCS)

testclean:
	rm -f $(TEST_NAME)

.PHONY : all clean fclean re test testclean
