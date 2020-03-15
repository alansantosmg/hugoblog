---
author: Alan
categories:
- DevOps
classes: text-justify
date: "2017-03-02T00:00:00Z"
tags:
- Linux
title: Acertar a hora no Windows/Linux dualboot
---

Em instalações dualboot Windows 10/linux o horário do Windows fica incorreto.
É possível corrigir pelo no Linux:

1. Verifique se o relógio do Linux está usando UTC:
    - `timedatectl | grep local`
2. Se estiver, mude para local time:
    - `timedatectl set-local-rtc 1`
3. Caso queria desfazer a mudança:
    - `timedatectl set-local-rtc 0`
