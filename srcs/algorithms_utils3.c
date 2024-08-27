/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   algorithms_utils3.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <<marvin@42.fr> >                   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/02 17:30:50 by gkomba            #+#    #+#             */
/*   Updated: 2024/08/02 17:46:30 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

void	ft_catch_big_from_stack_b(t_list **stack_a, t_list **stack_b)
{
	if (ft_find_max_pos(*stack_b) == 0)
		ft_pa(stack_b, stack_a);
	else
	{
		ft_push_up_b(stack_b);
		ft_pa(stack_b, stack_a);
	}
}

void	ft_catch_small_from_stack(t_list **stack_a, t_list **stack_b)
{
	if (ft_find_min_pos(*stack_a) == 0)
		ft_pb(stack_b, stack_a);
	else
	{
		ft_push_up(stack_a);
		ft_pb(stack_b, stack_a);
	}
}

void	ft_catch_big_from_stack(t_list **stack_a, t_list **stack_b, int len)
{
	int	i;

	i = ft_find_max_pos(*stack_b);
	if (i == 1)
		ft_sb(stack_b);
	else if (i > ((len / 2) + 1))
		while (i++ < len)
			ft_rrb(stack_b);
	else
	{
		while (i--)
		{
			ft_rb(stack_b);
		}
	}
	ft_pa(stack_b, stack_a);
}

void	ft_move_a_to_b(t_list **stack_a, t_list **stack_b, int size)
{
	int	i;
	int	ra;
	int	pb;
	int	pivot;

	if (size <= 3)
		ft_sort_three(stack_a, 0);
	if (size <= 3)
		return ;
	pivot = get_pivot_qs(*stack_a, size);
	i = -1;
	ra = 0;
	pb = 0;
	while (++i < size)
	{
		if ((*stack_a)->value >= pivot)
			ra += ft_do_ra_and_rb_count(stack_a, 'a');
		else
			pb += ft_do_pb_and_pa_count(stack_a, stack_b, 'a');
	}
	ft_move_a_to_b(stack_a, stack_b, ra);
	while (ft_list_size(*stack_a) > (size / 2))
		ft_catch_small_from_stack(stack_a, stack_b);
}

void	ft_move_b_to_a(t_list **stack_a, t_list **stack_b, int size)
{
	int	i;
	int	rb;
	int	pa;
	int	pivot;

	if (size == 2)
	{
		ft_pa(stack_b, stack_a);
		ft_pa(stack_b, stack_a);
		return ;
	}
	pivot = get_pivot_qs(*stack_b, size - 1);
	i = -1;
	rb = 0;
	pa = 0;
	while (++i < size)
	{
		if ((*stack_b)->value <= pivot)
			rb += ft_do_ra_and_rb_count(stack_b, 'b');
		else
			pa += ft_do_pb_and_pa_count(stack_a, stack_b, 'b');
	}
}
