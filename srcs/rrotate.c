/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rrotate.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/26 18:14:40 by gkomba            #+#    #+#             */
/*   Updated: 2024/06/26 19:33:03 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

void	ft_rra(t_list **stack_a)
{
	if (*stack_a == NULL)
		return ;
	if (ft_push_last_to_first(stack_a))
		ft_putendl_fd("rra", 1);
}

void	ft_rrb(t_list **stack_b)
{
	if (*stack_b == NULL)
		return ;
	if (ft_push_last_to_first(stack_b))
		ft_putendl_fd("rrb", 1);
}

void	ft_rrr(t_list **stack_a, t_list **stack_b)
{
	ft_push_last_to_first(stack_a);
	ft_push_last_to_first(stack_b);
	ft_putendl_fd("rrr", 1);
}
