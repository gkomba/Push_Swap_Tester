/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_free_stacks.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gildo <gildo@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/29 11:45:11 by gkomba            #+#    #+#             */
/*   Updated: 2024/07/24 10:29:08 by gildo            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

void	ft_free_stacks(t_list **stack)
{
	t_list	*node;

	while ((*stack)->next)
	{
		node = *stack;
		*stack = (*stack)->next;
		free(node);
	}
	free(*stack);
}
