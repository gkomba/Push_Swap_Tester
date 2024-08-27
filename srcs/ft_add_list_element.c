/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_add_list_element.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/21 11:02:26 by gkomba            #+#    #+#             */
/*   Updated: 2024/06/26 19:15:51 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

void	ft_add_first(t_list **list, int new_value)
{
	t_list	*new;

	new = (t_list *)malloc(sizeof(t_list));
	if (new)
	{
		new->value = new_value;
		new->next = *list;
		*list = new;
	}
	else
		return ;
}

void	ft_add_last(t_list **list, int new_value)
{
	t_list	*new;
	t_list	*aux;

	new = (t_list *)malloc(sizeof(t_list));
	if (new)
	{
		new->value = new_value;
		new->next = NULL;
		if (*list == NULL)
			*list = new;
		else
		{
			aux = *list;
			while (aux->next)
				aux = aux->next;
			aux->next = new;
		}
	}
	else
		return ;
}
