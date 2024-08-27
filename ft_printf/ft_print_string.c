/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_string.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/23 12:43:02 by gkomba            #+#    #+#             */
/*   Updated: 2024/05/23 12:45:56 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

void	ft_print_string(char *str, int *count)
{
	if (!str)
	{
		ft_print_string("(null)", count);
		return ;
	}
	while (*str)
	{
		ft_print_char(*str++, count);
	}
}
