/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/21 12:08:11 by gkomba            #+#    #+#             */
/*   Updated: 2024/05/24 12:39:45 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static void	ft_checkformat(va_list args, char format, int *count)
{
	if (format == 'c')
		ft_print_char(va_arg(args, int), count);
	else if (format == 'd' || format == 'i')
		ft_print_nbr(((long)va_arg(args, int)), count);
	else if (format == 's')
		ft_print_string(va_arg(args, char *), count);
	else if (format == 'x')
		ft_print_hexa_low((long)va_arg(args, unsigned int), count);
	else if (format == 'X')
		ft_print_hexa_upper((long)va_arg(args, unsigned int), count);
	else if (format == 'p')
		ft_print_pointer(va_arg(args, void *), count);
	else if (format == 'u')
		ft_print_u_nbr((long long int)va_arg(args, unsigned int), count);
	else if (format == '%')
		ft_print_char('%', count);
}

int	ft_printf(char const *format, ...)
{
	va_list		args;
	int			count;

	count = 0;
	va_start (args, format);
	while (*format)
	{
		if (*format == '%')
		{
			format++;
			ft_checkformat(args, *format, &count);
		}
		else
			ft_print_char(*format, &count);
		format++;
	}
	va_end(args);
	return (count);
}
