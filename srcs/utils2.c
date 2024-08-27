/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils2.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gildo <gildo@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/24 12:57:38 by gildo             #+#    #+#             */
/*   Updated: 2024/07/24 13:29:51 by gildo            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

int	ft_find_alpha_in_list(char *str)
{
	int	i;

	i = 0;
	while (*str)
	{
		if (ft_isalpha(*str))
			i = 1;
		str++;
	}
	return (i);
}

void	ft_is_only_sapce(char *str)
{
	while (*str)
	{
		if (*str == 32 || *str == '\t')
			str++;
		else
			return ;
	}
	ft_send_error_sms();
}
