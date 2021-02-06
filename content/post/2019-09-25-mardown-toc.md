---
author: Alan Santos
authorEmoji: 👨🏻‍💻
authorDesc: Consultor em TI | Mestre em Sistemas de informação
authorImage: "/images/whoami/avatar.jpg"
categories:
- Programação
- Tecnologia
date: "2019-09-25T00:00:00Z"
description: Existe uma extensão do VSCode que facilita muito a vida na hora de escrever e manipular arquivos na linguagem Markdown. Todo bom programador é também preguiçoso. Quanto menos trabalho tiver para fazer algo, melhor.
tags:
- VsCode
- Linux
- Markdown
title: Markdown no Vscode
---

A liguagem de marcação Markdown foi criada para facilitar a publicação de textos na web em aplicativos como Slack, Github, e outros. Sua sintaxe permite vermos o documento num formato que é semelhante ao resultado final de publicação ainda em tempo de edição (texto puro). Ela também serve de conversor para html, sendo mais fácil de aprender e utilizar. Os posts deste blog por exemplo são escritos em Markdown.

Para trabalhar com o Markdown no editor Visual Studio Code podemos instalar a extensão Markdown All in One, pois a mesma reúne diversas funcionalidades interessantes, existentes em outras extensões, entre elas:

- Fornece atalhos para formatação rápida do documento em MD.
- Converte arquivos MD em HTML.
- Ajuda a criar sumário automaticamente para arquivos MD.
- Fornece preview do arquivo MD dentro do próprio VScode.
- Permite a criação automática de sumário.

As funcionalidades da extensão estão presentes na barra de comando do VSCode e podem ser facilmente acessadas como no exemplo abaixo.

#### Criação automática de sumário (Table of Contents)

A criação automática de sumário (TOC) funciona da seguinte, maneira. Basta criar normalmente o documento, com suas seções (títulos e sub-titulos) seguindo a sintaxe Markdown. Após criar seu documento com extensão .MD no Vscode, basta fazer o seguinte:

1. Posicione o cursor no local onde ficará o sumário.
2. tecle ```Ctrl + Shift + P```
3. Digite na janela de comando:  ```Markdown All In one: Create table of contents```
4. O sumário deverá aparecer no lugar onde foi posicionado o cursor.
5. Se quiser que algum item seja omitido do sumário, colocar na frente dele: `<!-- omit in toc -->`
6. Salve o arquivo.

Para atualizar o sumário repetir o procedimento acima, porém usando o comando:
```Markdown All in one: update table of content```
