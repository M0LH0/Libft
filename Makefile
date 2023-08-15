# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lsilva-p <lsilva-p@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/07/24 08:55:12 by lsilva-p          #+#    #+#              #
#    Updated: 2023/08/09 10:20:29 by lsilva-p         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME			= libft.a

SOURCES			=	ft_isalnum.c ft_isalpha.c ft_isdigit.c ft_isprint.c ft_isascii.c \
					ft_strlen.c ft_toupper.c ft_atoi.c ft_tolower.c ft_strchr.c ft_strlcat.c \
					ft_strncmp.c ft_putchar_fd.c ft_memset.c ft_memchr.c ft_memcmp.c ft_bzero.c \
					ft_calloc.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_striteri.c ft_strmapi.c \
					ft_strrchr.c ft_strlcpy.c ft_strdup.c ft_memcpy.c ft_memmove.c ft_strjoin.c ft_substr.c \
					ft_itoa.c ft_strtrim.c ft_strnstr.c ft_split.c

OBJS			= 	$(SOURCES:.c=.o)

CC				= 	gcc
RM				= 	rm -f
CFLAGS			= 	-Wall -Wextra -Werror -I.

BONUS			=	ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c \
					ft_lstadd_back_bonus.c ft_lstiter_bonus.c ft_lstclear_bonus.c ft_lstdelone_bonus.c \
					ft_lstmap_bonus.c

BONUS_OBJS		= 	$(BONUS:.c=.o)

all:			$(NAME)

%.o:			%.c
				$(CC) $(CFLAGS) -c $< -o $@
				ar rcs $(NAME) $@

$(NAME):		$(OBJS)
				
clean:
				$(RM) $(OBJS) $(BONUS_OBJS)

fclean:			clean
				$(RM) $(NAME)

re:				fclean $(NAME)

bonus:			$(BONUS_OBJS)

rebonus:		fclean bonus

.PHONY:			all clean fclean re bonus rebonus
