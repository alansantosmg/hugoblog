+++
title = "Refatiando Slices em Go"
description = "A Pegadinha do malandro ao refatiar Slices"
date = "2021-04-20"
author = "Alan Santos"
categories = [
	"Programação",
 	"Tecnologia",
	"Golang",
]
tags = [
 "Go",
]
thumbnail = "/img/golang.png"
image =  "/img/golang.png"
featuredImage = "/img/golang.png"
+++

👨🏻‍💻 Olá pessoal!

Precisamos conversar sobre Slices em Go!

Quem começou a estudar Go deve ter noção de que nessa linguagem, os slices tem papel mais importante do que os arrays como entidade de armazenamento de dados. 

Na prática, o programador vai lidar o tempo todo com slices, enquanto os arrays  são criados de forma subjacente pela linguagem. 

Trabalhar com slices é fácil. É algo bem parecido com o que fazemos em outras linguagens de programação, mas não se engane: existem diferenças importantes que se desconsideradas, podem trazer grandes dores de cabeça. 

Hoje vou mostrar uma dessas diferenças que é uma verdadeira `Pegadinha do Malandro` para os mais desavisados. 

Acompanhe o raciocínio no código comentado abaixo: 

```Go
package main
import "fmt"

func main() {

	// Criamos primeiro slice com dados
	primeiroSlice := []string{"a", "b", "c", "d", "e"}

	// Mostramos primeiro slice  [a b c d e]
	fmt.Println(primeiroSlice)

	// Criamos segundo slice usando itens do primeiro slice: [a d e]
	segundoSlice := append(primeiroSlice[:1], primeiroSlice[3:]...)

	// Mostramos segundo slice [a d e]
	fmt.Println(segundoSlice)

	// Mostramos novamente primeiro slice [a d e d e]
	// Como mudou o primeiro slice se ele não foi alterado?
	fmt.Println(primeiroSlice)

	// Explicação - Pegadinha do malandro:
	
    // Ao criar o segundo slice Go refatia (refaz)
    // o primeiro array/slice subjacente.
	
    // Licão: Cuidado ao trabalhar com Slices.
}

```
Se você não acredita, basta rodar esse código em sua máquina. 

É isso aí! Agora que você já sabe, abre o olho: 

**Muito cuidado ao usar slices**. 

Este tipo de coisa não ensinam nos bootcamps da vida!

