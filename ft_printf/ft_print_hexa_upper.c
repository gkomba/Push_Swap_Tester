/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_hexa_upper.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/23 13:33:13 by gkomba            #+#    #+#             */
/*   Updated: 2024/05/23 13:36:05 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_print_hexa_upper(unsigned long nbr, int *count)
{
	char	*base;

	base = "0123456789ABCDEF";
	if (nbr > 15)
		ft_print_hexa_upper(nbr / 16, count);
	ft_print_char(base[nbr % 16], count);
}
