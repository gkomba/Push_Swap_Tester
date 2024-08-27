/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_swap_list.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/26 19:04:34 by gkomba            #+#    #+#             */
/*   Updated: 2024/06/26 19:31:46 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

static	int	ft_swap_two_firsts(t_list **lst)
{
	int	tmp;

	tmp = 0;
	if (*lst == NULL || (*lst)->next == NULL)
		return (0);
	else
	{
		tmp = (*lst)->value;
		(*lst)->value = (*lst)->next->value;
		(*lst)->next->value = tmp;
	}
	return (1);
}

void	ft_sa(t_list **stack_a)
{
	if (ft_swap_two_firsts(stack_a))
		ft_putendl_fd("sa", 1);
}

void	ft_sb(t_list **stack_b)
{
	if (ft_swap_two_firsts(stack_b))
		ft_putendl_fd("sb", 1);
}

void	ft_ss(t_list **stack_a, t_list **stack_b)
{
	ft_swap_two_firsts(stack_a);
	ft_swap_two_firsts(stack_b);
	ft_putendl_fd("ss", 1);
}
