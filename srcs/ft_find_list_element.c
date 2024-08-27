/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_find_list_element.c                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gildo <gildo@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/22 11:37:40 by gkomba            #+#    #+#             */
/*   Updated: 2024/07/23 19:46:15 by gildo            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

int	ft_find_list_element(t_list *lst, int item)
{
	while (lst)
	{
		if (lst->value == item)
			return (item);
		else
			lst = lst->next;
	}
	return (-1);
}

int	ft_find_last_list(t_list *lst)
{
	t_list	*tmp;

	if (lst == NULL)
		return (-1);
	if (lst->next == NULL)
		return (lst->value);
	tmp = lst;
	while (tmp->next)
		tmp = tmp->next;
	return (tmp->value);
}

int	ft_find_first_list(t_list *lst)
{
	return (lst->value);
}

int	ft_find_max_list(t_list *lst)
{
	int		i;
	int		max;
	t_list	*curr;

	if (lst == NULL)
		return (0);
	i = -1;
	curr = lst;
	max = curr->value;
	while (++i < ft_list_size(lst))
	{
		if (max < curr->value)
			max = curr->value;
		curr = curr->next;
	}
	return (max);
}

int	ft_find_min_list(t_list *lst)
{
	int	min;

	if (lst == NULL)
		return (0);
	min = lst->value;
	while (lst->next)
	{
		if (min > lst->next->value)
			min = lst->next->value;
		lst = lst->next;
	}
	return (min);
}
