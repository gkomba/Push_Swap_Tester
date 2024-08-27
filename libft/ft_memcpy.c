/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gkomba <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/05/14 16:45:57 by gkomba            #+#    #+#             */
/*   Updated: 2024/05/14 17:57:58 by gkomba           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h" 

void	*ft_memcpy(void *dest, const void *src, size_t n)
{
	size_t		i;
	char		*dst;
	char		*str;

	dst = (char *)dest;
	str = (char *)src;
	if (!dst && !str)
		return (NULL);
	i = 0;
	while (i < n)
	{
		dst[i] = str[i];
		i++;
	}
	return (dst);
}
