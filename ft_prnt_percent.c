/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_prnt_percent.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tukhoza <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/08/11 17:51:10 by tukhoza           #+#    #+#             */
/*   Updated: 2018/08/14 15:37:22 by tukhoza          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int					ft_print_percent(t_flist *lst, char c)
{
	int				len;

	len = 0;
	if ((lst->flags)[2] == '0')
		(lst->flags)[0] = '0';
	if ((lst->flags)[3] != '-' && lst->width > 1)
		while (((lst->width)-- - 1))
			len += ft_print_char((lst->flags)[0]);
	len += ft_print_char(c);
	if (lst->width > 1 && (lst->flags)[3] == '-')
		while ((lst->width)-- - 1)
			len += ft_print_char(' ');
	return (len);
}
