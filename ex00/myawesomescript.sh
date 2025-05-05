# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    myawesomescript.sh                                 :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: loicpapon <loicpapon@student.42.fr>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/05/05 13:47:36 by loicpapon         #+#    #+#              #
#    Updated: 2025/05/05 13:48:55 by loicpapon        ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

# Vérifie si une URL est passée en argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <short_url>"
  exit 1
fi

# Utilise curl pour suivre les redirections (-Ls) et afficher l’URL finale
final_url=$(curl -Ls -o /dev/null -w %{url_effective} "$1")

# Affiche l’URL finale
echo "Final URL: $final_url"
