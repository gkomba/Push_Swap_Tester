/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_sort_list.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <<marvin@42.fr> >                   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/30 15:36:54 by gkomba            #+#    #+#             */
/*   Updated: 2024/07/30 15:40:30 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

void	ft_sort_stacks(t_list **stack_a, t_list **stack_b)
{
	int	size;

	size = ft_list_size(*stack_a);
	if (ft_is_sorted(*stack_a))
	{
		ft_free_stacks(stack_a);
		exit(0);
	}
	else
	{
		if (size == 2)
			ft_sort_two(stack_a);
		else if (size == 3)
			ft_sort_three(stack_a, 1);
		else if (size == 4)
			ft_sort_four(stack_a, stack_b, 1);
		else if (size == 5)
			ft_sort_five(stack_a, stack_b);
		else if (size >= 6 && size <= 49)
			ft_seletion_sort(stack_a, stack_b);
		else if (size >= 50 && size <= 200)
			ft_quick_seletion_sort(stack_a, stack_b, size);
		else if (size > 200)
			ft_quick_sort(stack_a, stack_b, size);
	}
}
