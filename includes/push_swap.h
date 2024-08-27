/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   push_swap.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <<marvin@42.fr> >                   +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/06/22 11:21:51 by gkomba            #+#    #+#             */
/*   Updated: 2024/08/02 17:45:52 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef PUSH_SWAP_H
# define PUSH_SWAP_H

# include "../ft_printf/ft_printf.h"
# include "../libft/libft.h"
# include <stdlib.h>

void					ft_push_up_b(t_list **stack);
void					ft_catch_big_from_stack_b(t_list **stack_a,
							t_list **stack_b);
void					ft_pop_last(t_list **lst);
void					ft_sa(t_list **stack_a);
void					ft_sb(t_list **stack_b);
void					ft_ss(t_list **stack_a, t_list **stack_b);
void					ft_pa(t_list **stack_b, t_list **stack_a);
void					ft_pb(t_list **stack_b, t_list **stack_a);
void					ft_ra(t_list **stack_a);
void					ft_rb(t_list **stack_b);
void					ft_rr(t_list **stack_a, t_list **stack_b);
void					ft_rra(t_list **stack_a);
void					ft_rrb(t_list **stack_b);
void					ft_rrr(t_list **stack_a, t_list **stack_b);
void					ft_check_args(int argc, char **argv);
void					ft_take_args(char **av, t_list **stack);
void					ft_check_args_pro(char **argv);
void					ft_input_error(int argc, char **argv);
void					ft_is_only_sapce(char *str);
void					ft_pop_first(t_list **lst);
void					ft_swap_last_to_first(t_list **lst);
void					ft_swap_first_to_last(t_list **lst);
void					ft_list_remove(t_list **lst, int value);
void					ft_remove_list_duplicate(t_list **lst);
void					ft_sort_list(t_list *lst);
void					ft_add_first(t_list **list, int new_value);
void					ft_add_last(t_list **list, int new_value);
void					ft_sort_stacks(t_list **stack_a, t_list **stack_b);
void					ft_sort_two(t_list **stack_a);
void					ft_sort_tree(t_list **stack_a, int close);
void					ft_sort_three(t_list **stack_a, int close);
void					ft_sort_five(t_list **stack_a, t_list **stack_b);
void					ft_sort_four(t_list **stack_a, t_list **stack_b,
							int close);
void					ft_seletion_sort(t_list **stack_a, t_list **stack_b);
void					ft_quick_sort(t_list **stack_a, t_list **stack_b,
							int size);
void					ft_quick_seletion_sort(t_list **stack_a,
							t_list **stack_b, int size);
void					ft_move_a_to_b(t_list **stack_a, t_list **stack_b,
							int r);
void					ft_move_b_to_a(t_list **stack_a, t_list **stack_b,
							int r);
void					ft_partition_a(t_list **stack_a, t_list **stack_b,
							int size);
void					ft_partition_b(t_list **stack_a, t_list **stack_b,
							int size);
void					ft_catch_small_from_stack(t_list **stack_a,
							t_list **stack_b);
void					ft_catch_big_from_stack(t_list **stack_a,
							t_list **stack_b, int len);
void					ft_selection_part(t_list **stack_a, t_list **stack_b,
							int size);
void					ft_do_rra_and_rrb_count(t_list **stack, int n, char s,
							int i);
void					ft_push_up(t_list **stack_a);
void					ft_push_up_b(t_list **stack);
void					ft_send_error_sms(void);
void					ft_push_back(t_list **stack_b, t_list **stack_a);
void					ft_putlist_nbr(t_list *list);
int						ft_check_list_dup(t_list *lst);
int						ft_find_min_pos(t_list *stack);
int						ft_find_max_pos(t_list *stack);
int						get_pivot(t_list *stack, int size);
int						get_pivot_qs(t_list *stack, int size);
int						ft_do_ra_and_rb_count(t_list **stack, char s);
int						ft_do_pb_and_pa_count(t_list **stack_a,
							t_list **stack_b, char stack);
int						ft_find_max_list(t_list *lst);
int						ft_find_min_list(t_list *lst);
int						ft_sum_list(t_list *lst);
int						ft_find_list_element(t_list *lst, int item);
int						ft_push_last_to_first(t_list **lst);
int						ft_push_first_to_last(t_list **lst);
int						ft_find_last_list(t_list *lst);
int						ft_find_first_list(t_list *lst);
int						ft_is_sorted(t_list *lst);
int						ft_is_sorted_rev(t_list *lst);
int						ft_find_alpha_in_list(char *str);

#endif
