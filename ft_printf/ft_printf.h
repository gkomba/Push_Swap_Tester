/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/22 14:29:31 by gkomba            #+#    #+#             */
/*   Updated: 2024/05/22 14:32:35 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <unistd.h>
# include <stdlib.h>
# include <stdarg.h>

void	ft_print_char(int c, int *count);
void	ft_print_string(char *str, int *count);
void	ft_print_nbr(long nbr, int *count);
void	ft_print_hexa_low(unsigned long nbr, int *count);
void	ft_print_hexa_upper(unsigned long nbr, int *count);
void	ft_print_u_nbr(long long nbr, int *count);
void	ft_print_pointer(void *add, int *count);

int		ft_printf(char const *format, ...);

#endif
