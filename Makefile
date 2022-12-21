# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: msilva-p <msilva-p@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/05 22:37:20 by msilva-p          #+#    #+#              #
#    Updated: 2022/09/08 19:37:14 by msilva-p         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	=ft_printf.c functions.c
OBJS	= ${SRCS:.c=.o}

NAME	=libftprintf.a

RM		= rm -f

all:	${NAME}

${NAME}:	${OBJS}
	ar rcs $@ $^ ft_printf.h

clean:
	${RM} ${OBJS}

fclean:	clean
	${RM} ${NAME}

re: fclean all

%.o: %.c
	cc -Werror -Wextra -Wall -c $< -o $@ 

.PHONY:  all clean fclean re

norm:
	@printf "\n\nNorminette simples\n\n"
	@norminette
	@printf "\n\nNorminette -R CheckHeader\n\n"
	@norminette -R CheckHeader
	@printf "\n\nNorminette -R CheckDefine\n\n"
	@norminette -R CheckDefine
