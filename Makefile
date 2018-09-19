# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tukhoza <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/11 18:02:02 by tukhoza           #+#    #+#              #
#    Updated: 2018/08/14 15:28:51 by tukhoza          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

GCC = gcc

F = -Wall -Wextra -Werror

NAME = libftprintf.a

OBJECT = ./ft_printf.o \
	./ft_lok_conversion.o \
	./ft_prnt_char.o \
	./ft_strchr.o \
	./ft_strsub.o \
	./ft_strdup.o \
	./ft_atoi.o \
	./ft_prnt_str.o \
	./ft_prnt_wchar.o \
	./ft_prnt_wstr.o \
	./ft_outof.o \
	./ft_strlen.o \
	./ft_memcpy.o \
	./ft_prnt_percent.o \
	./ft_hndling_char.o \
	./ft_hndling_str.o \
	./ft_hndling_digit.o \
	./ft_hndling_unsigned_digit.o \
	./ft_hndling_x.o \
	./ft_hndling_o.o \
	./ft_hndling_ptr.o \
	./ft_strdel.o

.PHONY: all clean fclean re

all: $(NAME)

$(NAME): $(OBJECT)
		ar rc $(NAME) $(OBJECT)
		ranlib $(NAME)

clean:
	rm -rf $(OBJECT)

fclean: clean
	rm -rf $(NAME)

re: fclean all

ft_printf.o: ft_printf.c
	$(GCC) $(F) -c ft_printf.c

ft_prnt_char.o: ft_prnt_char.c
	$(GCC) $(F) -c ft_prnt_char.c

ft_strchr.o: ft_strchr.c
	$(GCC) $(F) -c ft_strchr.c

ft_strsub.o: ft_strsub.c
	$(GCC) $(F) -c ft_strsub.c

ft_prnt_str.o: ft_prnt_str.c
	$(GCC) $(F) -c ft_prnt_str.c

ft_hndling_ptr.o: ft_hndling_ptr.c
	$(GCC) $(F) -c ft_hndling_ptr.c

ft_prnt_wchar.o: ft_prnt_wchar.c
	$(GCC) $(F) -c ft_prnt_wchar.c

ft_prnt_wstr.o: ft_prnt_wstr.c
	$(GCC) $(F) -c ft_prnt_wstr.c

ft_outof.o: ft_outof.c
	$(GCC) $(F) -c ft_outof.c

ft_lok_conversion.o: ft_lok_conversion.c
	$(GCC) $(F) -c ft_lok_conversion.c

ft_strdup.o: ft_strdup.c
	$(GCC) $(F) -c ft_strdup.c

ft_memcpy.o: ft_memcpy.c
	$(GCC) $(F) -c ft_memcpy.c

ft_strlen.o: ft_strlen.c
	$(GCC) $(F) -c ft_strlen.c

ft_atoi.o: ft_atoi.c
	$(GCC) $(F) -c ft_atoi.c

ft_prnt_percent.o: ft_prnt_percent.c
	$(GCC) $(F) -c ft_prnt_percent.c

ft_hndling_char.o: ft_hndling_char.c
	$(GCC) $(F) -c ft_hndling_char.c

ft_hndling_str.o: ft_hndling_str.c
	$(GCC) $(F) -c ft_hndling_str.c

ft_hndling_digit.o: ft_hndling_digit.c
	$(GCC) $(F) -c ft_hndling_digit.c

ft_hndling_unsigned_digit.o: ft_hndling_unsigned_digit.c
	$(GCC) $(F) -c ft_hndling_unsigned_digit.c

ft_hndling_x.o: ft_hndling_x.c
	$(GCC) $(F) -c ft_hndling_x.c

ft_hndling_o.o: ft_hndling_o.c
	$(GCC) $(F) -c ft_hndling_o.c

ft_strdel.o: ft_strdel.c
	$(GCC) $(F) -c ft_strdel.c
