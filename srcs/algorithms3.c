/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   algorithms3.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <<marvin@42.fr> >                   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/02 17:30:50 by gkomba            #+#    #+#             */
/*   Updated: 2024/07/30 15:35:48 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

void	ft_quick_sort(t_list **stack_a, t_list **stack_b, int size)
{
	ft_partition_a(stack_a, stack_b, size);
	ft_free_stacks(stack_a);
	exit(EXIT_SUCCESS);
}

void	ft_partition_a(t_list **stack_a, t_list **stack_b, int size)
{
	int	i;
	int	pivot;
	int	ra_count;
	int	pb_count;

	if (size == 1)
		return ;
	pivot = get_pivot(*stack_a, size);
	i = -1;
	ra_count = 0;
	pb_count = 0;
	while (++i < size)
	{
		if ((*stack_a)->value > pivot)
			ra_count += ft_do_ra_and_rb_count(stack_a, 'a');
		else
			pb_count += ft_do_pb_and_pa_count(stack_a, stack_b, 'a');
	}
	ft_do_rra_and_rrb_count(stack_a, ra_count, 'a', 0);
	ft_partition_a(stack_a, stack_b, ra_count);
	ft_partition_b(stack_a, stack_b, pb_count);
}

void	ft_partition_b(t_list **stack_a, t_list **stack_b, int size)
{
	int	i;
	int	pivot;
	int	rb_count;
	int	pa_count;

	if (size == 1)
	{
		ft_pa(stack_b, stack_a);
		return ;
	}
	pivot = get_pivot(*stack_b, size);
	i = -1;
	rb_count = 0;
	pa_count = 0;
	while (++i < size)
	{
		if ((*stack_b)->value <= pivot)
			rb_count += ft_do_ra_and_rb_count(stack_b, 'b');
		else
			pa_count += ft_do_pb_and_pa_count(stack_a, stack_b, 'b');
	}
	ft_do_rra_and_rrb_count(stack_b, rb_count, 'b', 0);
	ft_partition_a(stack_a, stack_b, pa_count);
	ft_partition_b(stack_a, stack_b, rb_count);
}
