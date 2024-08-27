/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <<marvin@42.fr> >                   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/25 17:32:29 by gkomba            #+#    #+#             */
/*   Updated: 2024/07/30 15:35:23 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

int	main(int ac, char **av)
{
	t_list	*stack_a;
	t_list	*stack_b;	

	stack_a = NULL;
	stack_b = NULL;
	if (ac == 1)
		exit(EXIT_SUCCESS);
	ft_input_error(ac, av);
	ft_take_args(av, &stack_a);
	if (!(ft_check_list_dup(stack_a)))
	{
		ft_free_stacks(&stack_a);
		exit(EXIT_FAILURE);
	}
	ft_sort_stacks(&stack_a, &stack_b);
	exit(EXIT_SUCCESS);
}
