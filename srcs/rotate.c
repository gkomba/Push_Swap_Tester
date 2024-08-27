/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   rotate.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/26 17:58:37 by gkomba            #+#    #+#             */
/*   Updated: 2024/06/26 19:32:23 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

void	ft_ra(t_list **stack_a)
{
	if (ft_push_first_to_last(stack_a))
		ft_putendl_fd("ra", 1);
}

void	ft_rb(t_list **stack_b)
{
	if (ft_push_first_to_last(stack_b))
		ft_putendl_fd("rb", 1);
}

void	ft_rr(t_list **stack_a, t_list **stack_b)
{
	ft_push_first_to_last(stack_a);
	ft_push_first_to_last(stack_b);
	ft_putendl_fd("rr", 1);
}
