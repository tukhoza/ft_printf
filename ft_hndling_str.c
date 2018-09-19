/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_hndling_str.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tukhoza <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/08/11 17:55:19 by tukhoza           #+#    #+#             */
/*   Updated: 2018/08/14 15:34:47 by tukhoza          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int					ft_handling_str(t_flist *lst, void *str)
{
	int len;

	lst->size = (str != NULL) ? ft_strlen((char *)str) : 6;
	len = 0;
	lst->size = !lst->precision ? lst->width : lst->size;
	if ((lst->flags)[2] == '0')
		(lst->flags)[0] = '0';
	while ((lst->flags)[3] != '-' && lst->width > lst->size)
		(len += ft_print_char((lst->flags)[0])) && (lst->width)--;
	while ((lst->flags)[3] != '-' && lst->width > lst->precision &&
	lst->precision != -1 && (lst->size > lst->precision))
		len += ft_print_char((lst->flags)[0]) && lst->width--;
	if (lst->spec == 's' && !lst->l)
		len += ft_print_str((char *)str, lst->precision);
	else if (lst->spec == 'S' || (lst->spec == 's' && lst->l))
		len += ft_print_wstr((wchar_t *)str, lst->precision);
	while ((lst->flags)[3] == '-' && lst->width > lst->size)
		len += ft_print_char(' ') && lst->width--;
	while ((lst->flags)[3] == '-' && lst->width > lst->precision &&
	lst->precision != -1 && (lst->size-- - lst->precision))
		len += ft_print_char(' ');
	return (len);
}
