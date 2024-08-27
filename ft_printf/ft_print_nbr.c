/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_nbr.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/22 15:10:47 by gkomba            #+#    #+#             */
/*   Updated: 2024/05/22 17:34:24 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_print_nbr(long nbr, int *count)
{
	if (nbr < 0)
	{
		ft_print_char('-', count);
		nbr = -nbr;
		ft_print_nbr(nbr, count);
	}
	else if (nbr > 9)
	{
		ft_print_nbr(nbr / 10, count);
		ft_print_nbr(nbr % 10, count);
	}
	else
		ft_print_char(nbr + 48, count);
}
