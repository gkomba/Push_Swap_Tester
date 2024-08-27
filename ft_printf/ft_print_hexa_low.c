/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_hexa_low.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/23 13:11:17 by gkomba            #+#    #+#             */
/*   Updated: 2024/05/23 13:22:36 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_print_hexa_low(unsigned long nbr, int *count)
{
	char	*base;

	base = "0123456789abcdef";
	if (nbr > 15)
		ft_print_hexa_low(nbr / 16, count);
	ft_print_char((base[nbr % 16]), count);
}
