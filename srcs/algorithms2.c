/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   algorithms2.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <<marvin@42.fr> >                   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/02 17:30:50 by gkomba            #+#    #+#             */
/*   Updated: 2024/07/30 15:42:28 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

void	ft_seletion_sort(t_list **stack_a, t_list **stack_b)
{
	while (ft_list_size(*stack_a) > 3 && !ft_is_sorted(*stack_a))
	{
		if (ft_find_min_pos(*stack_a) == 0)
			ft_pb(stack_b, stack_a);
		else
		{
			ft_push_up(stack_a);
			ft_pb(stack_b, stack_a);
		}
	}
	ft_sort_three(stack_a, 0);
	ft_push_back(stack_b, stack_a);
	ft_free_stacks(stack_a);
	exit(EXIT_SUCCESS);
}

void	ft_selection_part(t_list **stack_a, t_list **stack_b, int size)
{
	while (ft_list_size(*stack_b) > 1)
	{
		if (ft_is_sorted(*stack_b) || ft_list_size(*stack_b) == size)
			break ;
		ft_catch_big_from_stack(stack_a, stack_b, ft_list_size(*stack_b));
	}
}

void	ft_quick_seletion_sort(t_list **stack_a, t_list **stack_b, int size)
{
	int	count;

	ft_move_a_to_b(stack_a, stack_b, ft_list_size(*stack_a));
	ft_selection_part(stack_a, stack_b, size / 2);
	ft_move_b_to_a(stack_a, stack_b, (ft_list_size(*stack_b) / 2));
	ft_move_b_to_a(stack_a, stack_b, (ft_list_size(*stack_b) / 2));
	ft_move_b_to_a(stack_a, stack_b, 6);
	while (ft_list_size(*stack_b) > ft_list_size(*stack_b) / 2)
		ft_catch_big_from_stack_b(stack_a, stack_b);
	count = -1;
	while (++count < 15)
		ft_ra(stack_a);
	count = -1;
	while (++count < 35)
		ft_pb(stack_b, stack_a);
	count = -1;
	while (++count < 35)
		ft_catch_big_from_stack_b(stack_a, stack_b);
	count = -1;
	while (++count < 15)
		ft_rra(stack_a);
	ft_free_stacks(stack_a);
	exit(EXIT_SUCCESS);
}
