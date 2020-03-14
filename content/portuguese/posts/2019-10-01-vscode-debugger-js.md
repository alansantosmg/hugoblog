---
author: Alan
categories:
- Dev
description: Nada mais chato do que ter que ficar saindo do VSCode para debugar o código javascript no navegador. Porém descobri um jeito de parametrizar o debugger do VScode para realizar essa tarefa.
date: "2019-10-01T00:00:00Z"
tags:
- Javascript
- Vscode
title: Debugando Javascript Apps com Vscode
---

Uma das coisas que torna o VSCode mais do que um simples editor, é o fato dele já vir com uma funcionalidade que permite fazer o debug de aplicações. Então, porque não usá-lo ao invés ficar debugando a aplicação dentro do Google Chrome?

Esse post, foi escrito tendo em mente o desenvolvedor iniciante que muitas vezes não consegue configurar corretamente o ambiente por não ter exatamente a noção sobre o ponto de partida para realizar as configurações para esta tarefa e que acaba se frustrando, achando que o debugger do VScode não tem muita utilidade.

Então, vamos à obra, pois tudo é bem mais simples do que pode aparentar...

Para realizar nossa tarefa, precisaremos instalar 2 extensões no VScode. Na barra lateral esquerda do seu VScode, clique no botão `extensões` ou então use o atalho de teclado `Ctrl + shift + x`. e na barra de pesquisa do Marketplace busque e instale as extensões:

1. live server;
2. Debugger for Chrome;

Para facilitar a vida, normalmente crio um Workspace de dentro dele crio diversos projetos diferentes (desde que a configuração de ambiente seja semelhante). Assim, poupo algum tempo, ao invés ter que ficar alternando entre Workspaces para cada projeto.

Se você pretende trabalhar dessa forma, então para que possamos testar o funcionamento do debugger, crie uma pasta dentro do seu workspace chamada `projeto-teste`.

Nessa pasta, crie 2 arquivos:  `Index.html` e `principal.js`;

O conteúdo deles será:

index.html:

```HTML

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    </head>

    <body>
        <script src="principal.js"></script>
    </body>
</html>
```

principal.js:

```javascript

var teste = {
    meutexto: "teste",
    chamateste: function(){
        console.log("Isso é um: " + this.meutexto)
    }
};

teste.chamateste();
```

Obviamente o `index.html` não mostra nada na tela, justamente para vermos o que acontece por trás (mostrar mensagem) no console do debugger. O arquivo `principal.js` será responsável por criar um objeto, que possui um método para mostrar uma mensagem no console. Após a declaração do objeto, ele chama o método correspondente, que deverá "imprimir" a mensagem no console.

Após ter instalado a extensão do Live server, será possível ver na barra inferior do VScode o ícone e a palavra "Go live".  Ao clicar neles, é carregado um servidor web em sua máquina local. Por default, esse servidor usa a porta 5500.

Para saber se está funcionando corretamente,uma vez que você esteja na pasta `projeto-teste`, basta clicar no ícone, que ele carregará o live server, e buscará pelo arquivo index.html e o abrirá no navegador padrão, como se a pasta do projeto fosse o diretório raiz do servidor. Ao fazer isso, basta dar um f12 para abrir as ferramentas de desenvolvimento do chrome e verificar na guia `console` que a mensagem "Isso é um teste" apareceu (ou seja, a página index.html, chamou o script principal.js e o executou ao ser carregada).

Sabendo que o live server está funcionando ok. Agora vamos à configuração do Debugger for Chrome.

Com a extensão instalada, clique no menu `Debug` e `add configurations` e escolha como enviroment o Chrome.
Será aberto o arquivo de configuração. Pelo fato do projeto não estar hospedado na raiz do Workspace e sim numa pasta dentro deste, será necessário introduzir uma pequena modificação no arquivo.

Este deve ser o original:

```json
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "type": "chrome",
            "request": "launch",
            "name": "Launch Chrome against localhost",
            "url": "http://localhost:8080",
            "webRoot": "${workspaceFolder}"
        }
    ]
}
```

Lembra que a porta do live server é a 5500? Então, troque a 8080 por esta e acrescente uma linha, deixando o arquivo como abaixo:

```json
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "type": "chrome",
            "request": "launch",
            "name": "Launch Chrome against localhost",
            "url": "http://localhost:5500",
            "webRoot": "${workspaceFolder}",
            "file": "${workspaceFolder}/index.html"
        }
    ]
}
```

Outras variações possíveis:

```json
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "type": "chrome",
            "request": "launch",
            "name": "Launch Chrome against localhost",
            "url": "http://localhost:5500",
            "webRoot": "${workspaceFolder}/pasta-do-seu-projeto"
        }
    ]
}
```

Outra variação:

```json
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "type": "chrome",
            "request": "launch",
            "name": "Launch Chrome against localhost",
            "url": "http://localhost:5500",
            "webRoot": "${workspaceFolder}",
             "file": "${workspaceFolder}/pasta-do-seu-projeto/index.html"
        }
    ]
}
```

Escolher uma destas configurações básicas e mandar salvar o arquivo de configuração, deve ser o suficiente para fazer o debugger do Chrome rodar via Vscode.

Para saber se a configuração funcionou é simples. Após salvar o arquivo, execute o debugger, clicando em F5 quando estiver na pasta do projeto. Ao fazer o live server será iniciado na porta 5500. O debugger estará escutando essa porta (conforme configuramos) e na saída do terminal "debug console" deverá aparecer a mensagem gerada pela chamada do método que configuramos no objeto criado: "Isso é um teste".

A partir daí basta a começar a desenvolver e utilizar o Debugger. Sua utilização será assunto de outro post.
Espero que os modelos de arquivo de configuração do Debugger for Chrome, sirvam como passo inicial sobre como proceder para o uso do debugger de scripts JS no Vscode.

Se você gostou desse post, ou acha que precisa acrescentar, corrigir ou incluir algo, fique à vontade para deixar seus comentários. Contribuições são muito bem-vindas.

Até a próxima.
