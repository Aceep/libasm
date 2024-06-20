NAME = libasm.a

SRCS = 	ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s \
		ft_read.s \
		ft_strdup.s \

OBJS_DIR = ./objs
OBJS = $(SRCS:%.s=$(OBJS_DIR)/%.o)

ASM = nasm -felf64
CC = clang
CFLAGS = -Wall -Werror -Wextra -fPIE -pie

all: $(NAME)

tester: re
	@$(CC) $(CFLAGS) -o tester main.c -L. -lasm
	@./tester

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

$(OBJS): $(OBJS_DIR)/%.o: %.s | $(OBJS_DIR)
	@$(ASM) $< -o $@

$(OBJS_DIR):
	@mkdir $(OBJS_DIR)

clean:
	@rm -rf $(OBJS_DIR)

fclean: clean
	@rm -f $(NAME)
	@rm -f tester

re: fclean all

.PHONY: all clean fclean re