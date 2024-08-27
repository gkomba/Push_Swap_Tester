# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gkomba <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/23 20:21:07 by gkomba            #+#    #+#              #
#    Updated: 2024/05/23 20:21:13 by gkomba           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
SRCS =	ft_print_char.c\
	ft_printf.c\
	ft_print_nbr.c\
	ft_print_string.c\
	ft_print_hexa_low.c\
	ft_print_hexa_upper.c\
	ft_print_pointer.c\
	ft_print_u_nbr.c\
		
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
