# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gkomba <<marvin@42.fr> >                   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/23 20:21:07 by gkomba            #+#    #+#              #
#    Updated: 2024/08/02 17:39:59 by gkomba           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap
SRCS = srcs/ft_add_list_element.c\
	srcs/ft_checkargs.c\
	srcs/ft_check_list.c\
	srcs/ft_find_list_element.c\
	srcs/ft_pop.c\
	srcs/ft_push.c\
	srcs/ft_sort_list.c\
	srcs/ft_swap_list.c\
	srcs/rotate.c\
	srcs/rrotate.c\
	srcs/utils1.c\
	srcs/utils2.c\
	srcs/algorithms1.c\
	srcs/algorithms2.c\
	srcs/algorithms3.c\
	srcs/algorithms_utils1.c\
	srcs/algorithms_utils2.c\
	srcs/algorithms_utils3.c\
	srcs/push_swap.c\

OBJS = ${SRCS:.c=.o}
CC = cc
RM = rm -f
CFLAGS = -Wall -Wextra -Werror
PRINTF = ft_printf
LIBFT = libft

all: ${NAME}

${NAME}: ${OBJS}
	make -C ${PRINTF}
	make -C ${LIBFT}
	${CC} ${CFLAGS} -o ${NAME} ${OBJS} ${LIBFT}/libft.a ${PRINTF}/libftprintf.a
	@echo "\033[0;32mOK!\033[0m"

norm:
	norminette

git: fclean
	git status
	git add .
	git status
	git commit -m "UPDATED"
	git push

clean:
	make clean -s -C ${PRINTF}
	make clean -s -C ${LIBFT}
	${RM} ${OBJS}

fclean: clean
	make fclean -s -C ${PRINTF}
	make fclean -s -C ${LIBFT}
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re
