CC = cc
CFLAGS = -Wall -Wextra -Werror

COLLEEN_SRCS = ./Colleen.c
COLLEEN_OBJS = $(COLLEEN_SRCS:.c=.o)
COLLEEN = Colleen

GRACE_SRCS = ./Grace.c
GRACE_OBJS = $(GRACE_SRCS:.c=.o)
GRACE = Grace

SULLY_SRCS = ./Sully.c
SULLY_OBJS = $(SULLY_SRCS:.c=.o)
SULLY = Sully

all : $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN) : $(COLLEEN_OBJS)
	$(CC) $(CFLAGS) -o $@ $^
	rm -f $(COLLEEN_OBJS)

$(GRACE) : $(GRACE_OBJS)
	$(CC) $(CFLAGS) -o $@ $^
	rm -f $(GRACE_OBJS)

$(SULLY) : $(SULLY_OBJS)
	$(CC) $(CFLAGS) -o $@ $^
	rm -f $(SULLY_OBJS)

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean :
	rm -f tmp_Colleen Grace_kid.c Sully_*

fclean : clean
	rm -f $(COLLEEN) $(GRACE) $(SULLY)

re : 
	make fclean
	make all

.PHONY : all clean fclean re
