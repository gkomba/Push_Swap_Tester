/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/24 08:37:45 by gkomba            #+#    #+#             */
/*   Updated: 2024/06/27 13:56:03 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

void	ft_swap_last_to_first(t_list **lst)
{
	t_list	*tmp;
	int		swap;

	if (*lst == NULL || (*lst)->next == NULL)
		return ;
	tmp = *lst;
	while (tmp->next)
		tmp = tmp->next;
	swap = (*lst)->value;
	(*lst)->value = tmp->value;
	tmp->value = swap;
}

void	ft_swap_first_to_last(t_list **lst)
{
	t_list	*tmp;
	int		swap;

	if (*lst == NULL || (*lst)->next == NULL)
		return ;
	tmp = *lst;
	while (tmp->next)
		tmp = tmp->next;
	swap = tmp->value;
	tmp->value = (*lst)->value;
	(*lst)->value = swap;
}

void	ft_send_error_sms(void)
{
	ft_putendl_fd("Error", 2);
	exit(1);
}

void	ft_putlist_nbr(t_list *list)
{
	while (list)
	{
		ft_printf("%d ", list->value);
		list = list->next;
	}
}
