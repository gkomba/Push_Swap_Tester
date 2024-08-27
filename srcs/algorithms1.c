/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   algorithms1.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <<marvin@42.fr> >                   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/01 18:42:28 by gkomba            #+#    #+#             */
/*   Updated: 2024/08/02 18:20:06 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

void	ft_sort_two(t_list **stack_a)
{
	if (ft_is_sorted(*stack_a) == 0)
		ft_sa(stack_a);
	ft_free_stacks(stack_a);
	exit(EXIT_SUCCESS);
}

void	ft_sort_three(t_list **stack_a, int close)
{
	if ((ft_find_max_list(*stack_a) == ft_find_first_list(*stack_a))
		&& (ft_find_min_list(*stack_a) == ft_find_last_list(*stack_a)))
	{
		ft_ra(stack_a);
		ft_sa(stack_a);
	}
	if ((ft_find_max_list(*stack_a) == ft_find_first_list(*stack_a))
		&& (ft_find_min_list(*stack_a) == (*stack_a)->next->value))
		ft_ra(stack_a);
	if (ft_find_first_list(*stack_a) > (*stack_a)->next->value)
		ft_sa(stack_a);
	if ((ft_find_min_list(*stack_a) == ft_find_first_list(*stack_a))
		&& (ft_find_max_list(*stack_a) == (*stack_a)->next->value))
	{
		ft_sa(stack_a);
		ft_ra(stack_a);
	}
	if (ft_find_max_list(*stack_a) == (*stack_a)->next->value)
		ft_rra(stack_a);
	if (close == 1)
	{
		ft_free_stacks(stack_a);
		exit(0);
	}
}

void	ft_sort_four(t_list **stack_a, t_list **stack_b, int close)
{
	ft_push_up(stack_a);
	while (!ft_is_sorted(*stack_a))
	{
		ft_pb(stack_b, stack_a);
		ft_sort_three(stack_a, 0);
		ft_pa(stack_b, stack_a);
	}
	if (close == 1)
	{
		ft_free_stacks(stack_a);
		exit(EXIT_SUCCESS);
	}
}

void	ft_sort_five(t_list **stack_a, t_list **stack_b)
{
	ft_push_up(stack_a);
	while (!ft_is_sorted(*stack_a))
	{
		ft_pb(stack_b, stack_a);
		ft_sort_four(stack_a, stack_b, 0);
		ft_pa(stack_b, stack_a);
	}
	ft_free_stacks(stack_a);
	exit(EXIT_SUCCESS);
}
