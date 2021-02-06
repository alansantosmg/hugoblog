---
authorEmoji: 👨🏻‍💻
authorDesc: Consultor em TI | Mestre em Sistemas de informação
authorImage: "/images/whoami/avatar.jpg"
author: Alan
categories:
- Programação
- Tecnologia
date: "2019-09-25T00:00:00Z"
description: Me deparei com uma situação inusitada. Em algumas situações o Vscode estava abrindo novos arquivos na mesma aba do arquivo anterior. Existe uma forma de mudar esse comportamento.
tags:
- Vscode
title: Vscode só abre uma aba
---
Em algumas instalações o editor Visual Studio Code pode apresentar um comportamento estranho: você clica em um arquivo no explorer (lado esquerdo) e o mesmo é aberto em uma aba. Você clica em outro arquivo e ao invés de abrir em uma nova aba, ele abre o segundo arquivo na mesma aba do anterior.

Esse comportamento pode ser modificado, alterando-se um parâmetro nas configurações do Vscode.

1. No Vscode, pressione as teclas `ctrl + ,` ou clique na engrenagem na parte inferior da barra lateral esquerda para abrir as configurações do editor.
2. A seguir, nos settings, escolha `Workbench` e `editor management`.
3. Desmarque a opção `Enable Preview`.

Pronto: Agora, ao clicar nos arquivos no explorer do VScode, cada um será aberto em uma aba separada.

Bônus:

Aproveite que já está no `editor management` e altere a opção `Tab sizing` de `default` para `srink`. Dessa forma, as abas tentarão ocupar o menor espaço posssível à medida em que forem sendo abertas, aproveitando melhor o espaço.
