---
title: "Redirecionando do Github para outro local"
date: 2020-03-15T22:35:52-03:00
description: "Se vai migrar do Github mas quer manter o uso do domínio usuario.github.io em uso existe uma forma simples de fazê-lo, mas tem macete."
toc: true
author: Alan Santos
authorEmoji: 👨🏻‍💻
authorDesc: IT Consultant
authorImage: "/images/whoami/avatar.jpg"
categories:
- Dev
tags:
- Go
meta_image:
image:
draft: false
---
## Seu domínio Login.github.io
Muitos desenvolvedores costumam manter seus projetos hospedados no Github e aproveitam a estrutura disponível para criar um blog ou um site usando o recurso do github pages. 

Uma das facilidades que o Github oferece é permitir que o usuário tenha um domínio no formato:  `login.github.io`. Isso é muito legal pois ajuda a economizar evitando a compra de um nome de domínio e ao mesmo tempo já soa bastante profissional. O meu por exemplo é: `alansantosmg.github.io`.

## Movendo somente o conteúdo
Por algum motivo, quem utiliza o Github pode querer hospedar o conteúdo em outro lugar, mas ainda manter o uso do seu nome de domínio do Github. Mesmo quem compra um nome de domínio, pode querer uma coisa dessas e podem existir bons motivos para isso. 

No meu caso, por exemplo, tenho currículos distribuídos em papel na mão de recrutadores, cartões de visita entregues a clientes e prospects. Todos esses artefatos possuem o meu  domínio `Login.github.io` grafado. Seria impossível encontrar e avisar a todos sobre o novo endereço. 

## Redirect
A saída então é: ao hospedar o conteúdo em outro endereço, manter o antigo em funcionamento e fazer um redirecionamento. Assim, quem entrar no `Login.github.io` vai direto para o novo endereço. 

É possível fazer isso de forma muito simples em outros provedores, simplesmente hospedando uma página `index.html` com conteúdo em branco, mas com um redirecionador em seu cabeçalho. Uma vez hospedada essa página no endereço antigo, quando o mesmo for acessado, ela fará o direcionamento. Tudo lindo porém:  

{{< notice warning >}} O GITHUB NÃO PERMITE O REDIRECT DE REPOSITÓRIOS, POR QUESTÕES DE POLÍTICA DE SEGURANÇA. 
{{< /notice >}}

**Como fazer então?** 

## Fazendo o redirect funcionar no Github
Existe um pequeno macete para resolver a questão. Vamos por partes: 

1. Primeiro é preciso mover o conteúdo para o novo local/endereço onde deve ficar hospedado. 

2. Depois que mover todo o conteúdo para outro repositório, é preciso criar a página `index.html` e hospedá-la na raiz do repositório `Login.github.io`. A página pode ser igual ao modelo abaixo, tomando-se o cuidado de utilizar o endereço do novo local onde o conteúdo está agora hospedado: 

```html
<!DOCTYPE html>
<meta charset="utf-8">
<title>Redirecting to https://novoEndereco.algumaCoisa.com.br</title>
<meta http-equiv="refresh" content="0; URL=https://novoEndereço.algumaCoisa.com.br">
<link rel="canonical" href="alansantosmg.netlify.com">
```
3. A seguir é necessário criar um segundo arquivo. Ele vai se chamar 
`_config.yml`. Esse arquivo vai ter uma linha só, que é a seguinte: 

```yml
theme: jekyll-theme-cayman
```
4. Para finalizar, basta colocar os dois arquivos `index.html` e `_config.yml` na raiz do repositório  `Login.github.io`. 

## Explicação

A explicação para a mágica do segundo arquivo é a seguinte. Quando só temos o index.html, o Github considera o repositório como "um repositório" e não como um website pessoal ou de projeto e por isso, não permite o redirecionamento. 

Quando incluímos o `_config.yml` com aquela linha, o Github passa a enxergar o repositório como um site criado com o Jekyll, um gerador de conteúdo estático que gera sites que podem ser integrados ao Github. Como o repositório passa a ser entendido como um site, o redirecionamento passa a ser permitido, pois a arquivo `index.html` será executado quando alguém acessar o endereço `Login.github.io`. 

Bom, por enquanto é isso. Espero que tenham gostado. 
