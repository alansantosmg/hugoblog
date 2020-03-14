---
categories:
- DevOps
author: Alan
date: "2016-05-04T00:00:00Z"
tag:
- Linux
title: Atualizar cache de fontes - Ubuntu
---

Em algumas distribuições, ao instalar uma fonte ou pacote de fontes, as mesmas não são carregadas automaticamente. Para resolver a questão basta forçar a atualização do cache de fontes via terminal.

Após instalar uma fonte nova, abra um terminal e digite o comando:

`sudo fc-cache –f -v`

Depois que de teclar `enter` o cache de fontes estará atualizado e as novas fontes disponíveis em todas aplicações.
