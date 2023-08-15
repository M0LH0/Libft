/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lsilva-p <lsilva-p@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/07/27 11:02:13 by lsilva-p          #+#    #+#             */
/*   Updated: 2023/08/07 09:26:18 by lsilva-p         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s)
{
	char	*strdup;
	int		i;
	int		len;

	len = 0;
	while (s[len])
		len++;
	strdup = malloc((len + 1) * (sizeof(char)));
	if (!strdup)
		return (NULL);
	i = 0;
	while (s[i] != '\0')
	{
		strdup[i] = s[i];
		i++;
	}
	strdup[i] = '\0';
	return (strdup);
}
