/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_push.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/23 13:32:36 by gkomba            #+#    #+#             */
/*   Updated: 2024/06/26 19:30:14 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

int	ft_push_last_to_first(t_list **lst)
{
	t_list	*last;
	t_list	*tmp;

	if (*lst == NULL || (*lst)->next == NULL)
		return (0);
	last = *lst;
	tmp = NULL;
	while (last->next)
	{
		tmp = last;
		last = last->next;
	}
	tmp->next = NULL;
	last->next = *lst;
	*lst = last;
	return (1);
}

int	ft_push_first_to_last(t_list **lst)
{
	t_list	*first;
	t_list	*tmp;

	if (*lst == NULL || (*lst)->next == NULL)
		return (0);
	first = *lst;
	*lst = (*lst)->next;
	tmp = *lst;
	while (tmp->next)
		tmp = tmp->next;
	tmp->next = first;
	first->next = NULL;
	return (1);
}

void	ft_pa(t_list **stack_b, t_list **stack_a)
{
	if (*stack_b == NULL)
		return ;
	else
	{
		ft_add_first(stack_a, (*stack_b)->value);
		ft_pop_first(stack_b);
		ft_putendl_fd("pa", 1);
	}
}

void	ft_pb(t_list **stack_b, t_list **stack_a)
{
	if (*stack_a == NULL)
		return ;
	else
	{
		ft_add_first(stack_b, (*stack_a)->value);
		ft_pop_first(stack_a);
		ft_putendl_fd("pb", 1);
	}
}
