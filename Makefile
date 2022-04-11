# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fleduc <marvin@42quebec.com>               +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/07 13:24:27 by fleduc            #+#    #+#              #
#    Updated: 2022/04/08 11:56:59 by fleduc           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
NAME = libftprintf.a

CC = gcc
CFLAGS = -Wall -Werror -Wextra
RM = rm -rf
AR = ar rcs

SRCS = ft_printf.c ft_format_p.c ft_format_x_u.c ft_format_d_i.c \
	   libft/ft_putnbr_fd.c

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: fclean clean re all
