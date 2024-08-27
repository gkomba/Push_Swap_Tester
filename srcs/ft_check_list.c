/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_check_list.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gildo <gildo@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/24 18:10:29 by gkomba            #+#    #+#             */
/*   Updated: 2024/07/26 16:13:53 by gildo            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

int	ft_check_list_dup(t_list *lst)
{
	t_list	*tmp;

	if (lst == NULL || lst->next == NULL)
		return (1);
	while (lst)
	{
		tmp = lst->next;
		while (tmp)
		{
			if (tmp->value == lst->value)
			{
				ft_putendl_fd("Error", 2);
				return (0);
			}
			tmp = tmp->next;
		}
		lst = lst->next;
	}
	return (1);
}

int	ft_is_sorted(t_list *lst)
{
	t_list	*tmp;

	if (lst == NULL || lst->next == NULL)
		return (1);
	tmp = lst;
	while (tmp->next)
	{
		if (tmp->value > tmp->next->value)
			return (0);
		else
			tmp = tmp->next;
	}
	return (1);
}

int	ft_is_sorted_rev(t_list *lst)
{
	t_list	*tmp;

	if (lst == NULL || lst->next == NULL)
		return (1);
	tmp = lst;
	while (tmp->next)
	{
		if (tmp->value < tmp->next->value)
			return (0);
		else
			tmp = tmp->next;
	}
	return (1);
}
