/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_pointer.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gildo <gildo@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/23 13:49:12 by gkomba            #+#    #+#             */
/*   Updated: 2024/07/23 19:48:54 by gildo            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_print_pointer(void *add, int *count)
{
	char				*base;
	unsigned long long	adress;

	if (add == NULL)
	{
		ft_print_string("(nil)", count);
		return ;
	}
	adress = (unsigned long long)add;
	base = "0123456789abcdef";
	ft_print_string("0x", count);
	if (adress >= 16)
		ft_print_hexa_low(adress / 16, count);
	ft_print_char((base[adress % 16]), count);
}
