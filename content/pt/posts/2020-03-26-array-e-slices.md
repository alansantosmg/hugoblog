---
title: "O que ninguém te conta sobre Arrays e Slices na linguagem Go"
date: 2020-03-26T14:06:55-03:00
description: "Neste artigo, falarei sobre algumas peculiaridades interessantes e cuidados que um programador deve ter ao utilizar arrays e slices na liguagem Go!"
toc: true
author: Alan Santos
authorEmoji: 👨🏻‍💻
authorDesc: IT Consultant
authorImage: "/images/whoami/avatar.jpg"
categories:
- Dev
tags:
- Go
meta_image: /images/feature3/golang.png
image: /images/feature3/golang.png
draft: false
---
No post de hoje eu vou contar sobre algumas peculiaridades sobre **Arrays** e **Slices** na linguagem de programação GO.

Eu não vou explicar o que são arrays e slices, pois estou partindo do pressuposto que se você está lendo este artigo, deve ter um mínimo de conhecimento sobre linguagens de programação. Também não vou fazer diagramas, pois o assunto é óbvio demais e não carece de tal recurso.

## Arrays

### Tamanho dos arrays
* Na linguagem GO, um array ao ser declarado, precisa ter um tamanho fixo.
* Uma vez declarado um array, não existe uma forma de mudar o seu tamanho original.
* Se precisar de um array maior, o que pode ser feito é definir um novo array com mais posições. Depois, copiar para o novo array os dados do array original.


### Arrays e funções
Na liguagem GO, quando um array é passado como parâmetro de uma função, o que o programador na verdade está fazendo é realizando uma cópia do array que foi passado. Isso tem implicações:
* qualquer mudança feita no array passado como parâmetro, será perdida quando a função terminar/deixar de existir.
* o array original não refletirá qualquer alteração que tiver sido realizada dentro do escopo da função.
* passar o array como parâmetro de uma função pode causar lentidão na execução do programa.

{{< notice warning >}}
Imagine que se você tiver um array muito grande, ao passá-lo como parâmetro de função, a cópia demorará o tempo proporcional ao seu tamanho.
{{< /notice >}}

### Criando array
```Go

// sempre tem tamanho fixo

myarray := [4]int{0,1,2,3}

```

## Slices

### Tamanho dos slices
* Um Slice é uma estrutura parecida com um array em GO.
* Embora seja parecido com um array, um slice é mais flexível, pois não precisa ter um tamanho fixo.
* Sendo estruturas de tamanho variável, slices em GO, acabam fazendo o papel que arrays tem em outras linguagens.
* O slice além de tamanho, também tem capacidade.
* Quando um slice esgota seu tamanho (todas as posições são preenchidas), Go simplesmente dobra a capacidade do Slice. Isso pode ser problemático para Slices grandes.

{{< notice warning >}}
Se o programador tiver por exemplo, um slice com 5 milhões de posições e precisar preencher mais uma posição, a capacidade do Slice dobrará para 10 milhões de posições.
{{< /notice >}}

### Slices e funções
Na linguagem Go, ao passar um Slice como parâmetro de uma função, na verdade o programador está passando uma referência.
* qualquer mudança ocorrida no slice como parâmetro dentro de uma função, será refletida no slice referenciado.
* passar um slice como parâmetro é algo rápido, pois o programador está criando apenas um ponteiro e não uma cópia do slice original.

### Criando um slice
```Go

// Slice c/ elementos mas sem tamanho fixo

aSliceliteral := []int{1,2,3,4}

// Slice s/ elementos mas de tamanho fixo

aIntegerSlice := make([]int, 20)

```

## Cópia entre arrays e slices

### De array para slice
* Ao copiar um array para um slice, é preciso convertê-lo primeiro para slice com a notação [:]. Se isso não for feito, o compilador gerará um erro.
* Ao se copiar um array para um slice, o slice será reduzido ou aumentado para o tamanho do array e seus elementos *serão preservados*!

### De slice para array
* Ao se copiar um slice para um array, o array manterá seu tamanho. Somente serão copiados os itens que cabem dentro do array e os elementos existentes serão sobrescritos.

## Finalizando

Bem pessoal, é isso aí. Go é legal, mas tem que tomar cuidado com pequenos detalhes. Logo mais, voltarei com outras peculiaridades dessa interessante e poderosa linguagem.
