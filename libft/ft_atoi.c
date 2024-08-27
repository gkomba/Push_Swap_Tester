/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/16 16:51:47 by gkomba            #+#    #+#             */
/*   Updated: 2024/05/16 17:17:04 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdio.h>

int	ft_atoi(const char *nptr)
{
	int	sign;
	int	resul;

	sign = 1;
	resul = 0;
	while ((*nptr >= 9 && *nptr <= 13) || *nptr == 32)
		nptr++;
	if (*nptr == '-')
		sign *= -1;
	if (*nptr == '-' || *nptr == '+')
		nptr++;
	while (*nptr >= 48 && *nptr <= 57)
	{
		resul = resul * 10 + *nptr - '0';
		nptr++;
	}
	return (resul * sign);
}

int	ft_atoi_v2(const char *nptr, char **mat, t_list **stack_a)
{
	int		sign;
	long	resul;

	sign = 1;
	resul = 0;
	while ((*nptr >= 9 && *nptr <= 13) || *nptr == 32)
		nptr++;
	if (*nptr == '-')
		sign *= -1;
	if (*nptr == '-' || *nptr == '+')
		nptr++;
	while (*nptr >= 48 && *nptr <= 57)
	{
		resul = resul * 10 + *nptr - '0';
		nptr++;
	}
	if ((resul < INT_MIN) || (resul > INT_MAX))
	{
		ft_free_matriz(mat);
		if (ft_list_size(*stack_a))
			ft_free_stacks(stack_a);
		ft_putendl_fd("Error", 2);
		exit(1);
	}
	return (resul * sign);
}
