/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   algorithms_utils2.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <<marvin@42.fr> >                   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/11 19:18:27 by gkomba            #+#    #+#             */
/*   Updated: 2024/08/02 17:44:57 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

int	ft_do_ra_and_rb_count(t_list **stack, char s)
{
	if (s == 'a')
		ft_ra(stack);
	else if (s == 'b')
		ft_rb(stack);
	return (1);
}

int	ft_do_pb_and_pa_count(t_list **stack_a, t_list **stack_b, char stack)
{
	if (stack == 'a')
		ft_pb(stack_b, stack_a);
	else if (stack == 'b')
		ft_pa(stack_b, stack_a);
	return (1);
}

void	ft_do_rra_and_rrb_count(t_list **stack, int n, char s, int i)
{
	if (s == 'a')
	{
		if (i < n)
			ft_rra(stack);
	}
	else if (s == 'b')
	{
		if (i < n)
			ft_rrb(stack);
	}
	if (i >= n)
		return ;
	ft_do_rra_and_rrb_count(stack, n, s, i + 1);
}

void	ft_push_back(t_list **stack_b, t_list **stack_a)
{
	int	size;

	size = ft_list_size(*stack_b);
	while (size > 0)
	{
		ft_pa(stack_b, stack_a);
		size--;
	}
}

int	get_pivot_qs(t_list *stack, int size)
{
	t_list	*curr;
	t_list	*run;
	int		i;

	curr = stack;
	if (!stack)
		return (0);
	while (curr)
	{
		i = 0;
		run = stack;
		while (run)
		{
			if (run->value >= curr->value)
				i++;
			run = run->next;
		}
		if (i == size / 2 || i == 0)
			return (curr->value);
		curr = curr->next;
	}
	return (0);
}
