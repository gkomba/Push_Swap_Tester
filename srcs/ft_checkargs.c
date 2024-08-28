/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_checkargs.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/26 11:05:50 by gkomba            #+#    #+#             */
/*   Updated: 2024/08/28 19:09:40 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/push_swap.h"

void	ft_input_error(int argc, char **argv)
{
	char	**av;

	if (argc == 2)
	{
		ft_is_only_sapce(argv[1]);
		if ((ft_strlen(argv[1]) > 2) && ft_strchr(argv[1], 32) && ft_strchr(argv[1], 22))
		{
			ft_putstr_fd("Error", 1);
			exit(0);
		}
		if (ft_strlen(argv[1]) > 2 && ft_strchr(argv[1], 32))
		{
			if (ft_find_alpha_in_list(argv[1]))
				ft_send_error_sms();
			av = ft_split(argv[1], 32);
			ft_check_args(argc, av);
			ft_check_args_pro(av);
			ft_free_matriz(av);
		}
		else
		{
			if (ft_find_alpha_in_list(argv[1]))
				ft_send_error_sms();
			else
				ft_check_args(argc, argv);
		}
	}
	else
		ft_check_args(argc, argv);
}

void	ft_check_args(int argc, char **argv)
{
	int	i;
	int	j;

	if (ft_isalpha(argv[0][0]))
		ft_send_error_sms();
	i = 0;
	while (++i < argc)
	{
		j = 0;
		if (argv[i][j] == '\0')
			ft_send_error_sms();
		if (argv[i][j] == '-' || argv[i][j] == '+')
			j++;
		if (argv[i][j] == '\0' || !ft_isdigit(argv[i][j]))
			ft_send_error_sms();
		while (argv[i][j])
		{
			if (!ft_isdigit(argv[i][j]))
				ft_send_error_sms();
			j++;
		}
	}
}

void	ft_check_args_pro(char **argv)
{
	int	i;
	int	j;

	j = 0;
	while (argv[j])
	{
		i = -1;
		while (++i < (int)ft_strlen(argv[j]))
		{
			if (argv[j][i] == '\0')
				ft_send_error_sms();
			if (argv[j][i] == '-' || argv[j][i] == '+')
				i++;
			if (argv[j][i] == '\0' || !ft_isdigit(argv[j][i]))
				ft_send_error_sms();
		}
		j++;
	}
}

void	ft_take_args(char **av, t_list **stack)
{
	int		i;
	int		j;
	char	**mat;

	i = 0;
	while (av[++i])
	{
		mat = ft_split(av[i], 32);
		j = 0;
		while (mat[j])
		{
			ft_add_last(stack, ft_atoi_v2(mat[j], mat, stack));
			j++;
		}
		ft_free_matriz(mat);
	}
}
