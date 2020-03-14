---
author: Alan
categories:
- DevOps
date: "2019-07-07T00:00:00Z"
description: Saiba o que fazer quando o a loja de aplicativos do Ubuntu não estiver sendo carregada corretamente ao abrir a aplicação.
tags:
- Linux
title: Erro na loja de Apps do Ubuntu
---
O cache da loja de aplicativos do Ubuntu pode se corromper levando a duas situações: ou a loja não carrega ou a lista de aplicativos é baixada cada vez que o software é aberto (não faz cache). Para corrigir é preciso apagar o cache. Abra um terminal e digite os comandos abaixo:

- `killall gnome-software`
- `sudo rm -rf ~/.local/share/gnome-software`

Depois de executar o comando, certifique-se de que está conecetado na internet e abra novamente a loja para baixar a lista de apps e criar um novo cache.
