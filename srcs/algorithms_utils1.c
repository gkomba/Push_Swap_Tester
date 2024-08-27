/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   algorithms_utils1.c                                :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <<marvin@42.fr> >                   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/07/01 18:44:10 by gkomba            #+#    #+#             */
/*   Updated: 2024/07/30 15:37:47 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

int	ft_find_min_pos(t_list *stack)
{
	int	min;
	int	pos;

	min = ft_find_min_list(stack);
	pos = 0;
	while (stack)
	{
		if (stack->value == min)
			break ;
		pos++;
		stack = stack->next;
	}
	return (pos);
}

int	ft_find_max_pos(t_list *stack)
{
	int		max;
	int		pos;
	t_list	*curr;

	max = ft_find_max_list(stack);
	pos = 0;
	curr = stack;
	while (curr)
	{
		if (curr->value == max)
			break ;
		curr = curr->next;
		pos++;
	}
	return (pos);
}

void	ft_push_up_b(t_list **stack)
{
	int	min_pos;
	int	len;

	min_pos = ft_find_max_pos(*stack);
	len = ft_list_size(*stack);
	if (min_pos == 0)
		ft_sb(stack);
	if (min_pos <= len / 2)
	{
		while (min_pos-- > 1)
			ft_rb(stack);
		ft_sb(stack);
	}
	else
	{
		while (min_pos < len)
		{
			ft_rrb(stack);
			min_pos++;
		}
	}
}

void	ft_push_up(t_list **stack)
{
	int	min_pos;
	int	len;

	min_pos = ft_find_min_pos(*stack);
	len = ft_list_size(*stack);
	if (min_pos == 0)
		ft_sa(stack);
	if (min_pos <= len / 2)
	{
		while (min_pos-- > 1)
			ft_ra(stack);
		ft_sa(stack);
	}
	else
	{
		while (min_pos < len)
		{
			ft_rra(stack);
			min_pos++;
		}
	}
}

int	get_pivot(t_list *stack, int size)
{
	int		pivot;
	int		i;
	t_list	*tmp;

	if (size == 0)
		return (0);
	i = 0;
	pivot = 0;
	tmp = stack;
	while (i < size)
	{
		pivot += tmp->value;
		tmp = tmp->next;
		i++;
	}
	return (pivot / size);
}
