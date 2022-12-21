/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: msilva-p <msilva-p@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/09/05 22:27:45 by msilva-p          #+#    #+#             */
/*   Updated: 2022/09/08 17:41:44 by msilva-p         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <unistd.h>
# include <stdarg.h>

int		ft_printf(const char *string, ...);
int		ft_conditions(char character, va_list args);
size_t	ft_strlen(const char *s);
int		ft_print_char(int b);
int		ft_print_number(int nb);
int		ft_print_string(char *string);
int		ft_print_hexa(unsigned int hexa, char c);
int		ft_print_unsigned(unsigned int un);
int		ft_print_pointer(unsigned long pointer, char c);

#endif