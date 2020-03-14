---
author: Alan
categories:
- Dev
classes: text-justify
date: "2018-08-02T00:00:00Z"
tags:
- VsCode
title: Vscode como editor padrão no Linux
---

Quando instalamos alguma distribuição linux, normalmente o ambiente gráfico utilizado já trás consigo seu editor de textos oficial. Por exemplo, no Xbuntu (xfce) o editor é o mousepad, no Ubuntu e mint o editor normalmente é o Gedit e por aí vai. Quem é desenvolvedor costuma utilizar editores mais avançados do que aqueles que se assemelham ao bloco de notas e costumam vir por padrão. Para tornar seu editor de código preferido como padrão, basta seguir os passos abaixo. No caso, estamos fazendo com o editor Visual Studio Code, mas poderia ser o Sublime, Atom, etc.

Abra um terminal e digite:
`xdg-mime default code.desktop text/plain`

Outra forma de fazer seria utilizar o Mime-Type editor de sua distribuição predileta. Porém via terminal é mais rápido.
