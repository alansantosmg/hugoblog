---
author: Alan
categories:
- DevOps
classes: text-justify
date: "2018-11-07T00:00:00Z"
tags:
- Docker
title: Instalando o Docker no Linux Mint
---

O Docker é uma tecnologia que permite a implementação de aplicações em ambientes separados (chamados de containers) da máquina original (host). Dessa forma o desenvolvedor consegue disponibilizar seu software dentro do container de maneira padronizada. Como o container funciona de forma separada do host, o desenvolvedor não tem que se preocupar com as configurações de ambiente.

## Instruções para instalação do Docker no Linux Mint 19

### 1. Remover versões anteriores do docker

    sudo apt-get remove docker docker-engine docker.io
    sudo apt-get update

### 2. Instalar os pré-requisitos para obtenção do docker

    sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

### 3. Obter chave pública de acesso e adicionar o repositório oficial do docker

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo apt-key fingerprint 0EBFCD88
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
    sudo apt-get update

### 4. Instalar o docker

    sudo apt-get install docker-ce

### 5. Testar se a instalação foi bem sucedida

### Baixar imagem de teste 'hello-word' criar um container e executá-lo.

    docker run hello-world

### Depois verificar se o container existe

    docker ps -a
