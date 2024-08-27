NAME = libft.a
SRCS = 	ft_strlen.c\
	ft_memmove.c\
	ft_memcpy.c\
	ft_strlcpy.c\
	ft_strlcat.c\
	ft_isalpha.c\
	ft_isdigit.c\
	ft_isalnum.c\
	ft_isascii.c\
	ft_isprint.c\
	ft_memset.c\
	ft_bzero.c\
	ft_toupper.c\
	ft_tolower.c\
	ft_strchr.c\
	ft_strrchr.c\
	ft_strncmp.c\
	ft_memchr.c\
	ft_memcmp.c\
	ft_strnstr.c\
	ft_atoi.c\
	ft_calloc.c\
	ft_strdup.c\
	ft_substr.c\
	ft_strjoin.c\
	ft_strtrim.c\
	ft_split.c\
	ft_itoa.c\
	ft_free_matriz.c\
	ft_free_stacks.c\
	ft_list_size.c\
	ft_putchar_fd.c\
	ft_putstr_fd.c\
	ft_striteri.c\
	ft_strmapi.c\
	ft_putendl_fd.c\
	ft_putnbr_fd.c\

OBJS = ${SRCS:.c=.o}
LIBC = ar rcs
CC = cc
RM = rm -f
CFLAGS = -Wall -Werror -Wextra

${NAME}: ${OBJS}
	${LIBC} ${NAME} ${OBJS}

all: ${NAME}

clean:
	${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY : all clean fclean re
