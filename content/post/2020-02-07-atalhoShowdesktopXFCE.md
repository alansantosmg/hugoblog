---
author: Alan Santos
authorEmoji: 👨🏻‍💻
authorDesc: Consultor em TI | Mestre em Sistemas de informação
authorImage: "/images/whoami/avatar.jpg"
categories:
- Infraestrutura
- Tecnologia
date: "2020-02-07T15:34:54Z"
tags:
- Linux
- XFCE
description: Quem usa computadores que possuem a tecla Windows e acaba se acostumando com as facilidades que ela oferece como atalho de teclado. Que tal usá-la para minimizar todas as janelas do XFCE?

title: Atalho para minimizar todas janelas no XFCE
---

image: images/feature3/xfce.png
Quem usa computadores que possuem a tecla Windows e acaba se acostumando com as facilidades que ela oferece como atalho de teclado.

Ao migrar para o linux com XFCE, experimentei certo dia tentar minimizar todas as janelas usando
a sequência de teclas  `Windows` + `d` e não funcionou. Pequisei a respeito e descobri que a a sequência no XFCE é `Control` + `alt` + `d`. Mais chatinho de digitar, né?

A boa notícia é que é possível mudar esse comportamento no XFCE. Para isso, usando o editor de sua preferência, vamos acertar isso. No caso eu uso o Editor vim, mas pode ser qualquer outro como o mousepad, gedit, VScode. Vamos lá?

```bash
1. Abra um terminal e use seu editor:

  vim ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-keyboard-shortcuts.xml

2. Procure pela palavra: show_desktop_key.

3. Esta é a propriedade que deverá ser alterada:

<property name="&lt;Super&gt;Alt&gt;d" type="string" value="show_desktop_key"/>

4. Altere para:

<property name="&lt;Super&gt;d" type="string" value="show_desktop_key"/>
```
Terminada a alteraçao, reinicie o computador, entre no XFCE, abra algumas janelas e experimente minimizá-las usando a sequência de teclas `windows` + `D`.
