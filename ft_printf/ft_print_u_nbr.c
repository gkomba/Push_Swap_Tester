/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_unsigned.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/23 17:42:24 by gkomba            #+#    #+#             */
/*   Updated: 2024/05/23 17:46:37 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_print_u_nbr(long long nbr, int *count)
{
	if (nbr < 0)
		ft_print_string("4294967254", count);
	else
		ft_print_nbr(nbr, count);
}
