/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_pop.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gildo <gildo@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/23 12:28:36 by gkomba            #+#    #+#             */
/*   Updated: 2024/07/23 19:46:42 by gildo            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

void	ft_pop_first(t_list **lst)
{
	t_list	*tmp;

	if (*lst == NULL)
		return ;
	tmp = *lst;
	*lst = (*lst)->next;
	free(tmp);
}

void	ft_pop_last(t_list **lst)
{
	t_list	*tmp;
	t_list	*last;

	if (*lst == NULL)
		return ;
	if ((*lst)->next == NULL)
	{
		free(*lst);
		*lst = NULL;
		return ;
	}
	tmp = NULL;
	last = *lst;
	while (last->next)
	{
		tmp = last;
		last = last->next;
	}
	tmp->next = NULL;
	free(last);
}

void	ft_list_remove(t_list **lst, int value)
{
	t_list	*tmp;
	t_list	*curr;

	if (*lst == NULL)
		return ;
	while (*lst && (*lst)->value == value)
	{
		curr = *lst;
		*lst = (*lst)->next;
		free(curr);
	}
	curr = *lst;
	while (curr && curr->next)
	{
		if (curr->next->value == value)
		{
			tmp = curr->next;
			curr->next = tmp->next;
			free(tmp);
		}
		else
			curr = curr->next;
	}
}

void	ft_remove_list_duplicate(t_list	**lst)
{
	t_list	*tmp;
	t_list	*curr;
	t_list	*runner;

	if (*lst == NULL || (*lst)->next == NULL)
		return ;
	curr = *lst;
	while (curr)
	{
		runner = curr;
		while (runner->next)
		{
			if (runner->next->value == curr->value)
			{
				tmp = runner->next;
				runner->next = runner->next->next;
				free(tmp);
			}
			else
				runner = runner->next;
		}
		curr = curr->next;
	}
}
