---
author: Alan
categories:
- DevOps
classes: text-justify
date: "2019-01-02T00:00:00Z"
tags:
- Linux
title: Instalando o Azure Cli no Linux
---

Olá, se você é como eu, chegado a bizarrices como administrar o Azure a partir do Linux e não de um servidor ou client Windows, este artigo é para você.
O serviço de nuvem da Microsoft (**Azure**), pode ser comandado a partir de diversas interfaces: através do portal do Azure, disponível na web, através do de um console PowerShell, disponível em máquinas windows  ainda através da Azure CLI (Client Line Interface) que pode ser instalada em máquinas Linux e Macs.

Neste artigo, mostrarei como instalar a CLI do Azure em distribuições Linux que utilizam o gerenciador de pacotes APT (baseadas em Debian), como Ubuntu, Mint, entre outras.

O procedimento abaixo foi **testado no Debian 9** e deve funcionar em outras distros debian-like.

***A instalação não funcionou usando a documentação oficial da Microsoft***, mas não se preocupe:

Lançando mão de um pequeno macete, tudo correrá como esperado!

Então, mãos à obra:

Para começar, vamos incluir a localização do repositório do pacote da CLI do Azure, que está hospedada na Microsoft.

Abra um Shell terminal, copie e cole as linhas abaixo:

```bash
sudo apt-get install apt-transport-https lsb-release software-properties-common -y
AZ_REPO=$(lsb_release -cs)
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ $AZ_REPO main" | \

    sudo tee /etc/apt/sources.list.d/azure-cli.list
```

A seguir, vamos instalar a chave pública do repositório:

```bash

sudo apt-key --keyring /etc/apt/trusted.gpg.d/Microsoft.gpg adv \
     --keyserver packages.microsoft.com \
     --recv-keys BC528686B50D79E339D3721CEB3E94ADBE1229CF

```

Na documentação oficial, somos orientados a fazer um apt-get update. Porém, ao realizar o comando seguinte de instalação do pacote, é possível se deparar com a mensagem de pacote não encontrado.

Aqui vai o macete que irá lhe poupar tempo e neurônios: além de fazer um apt update também é preciso fazer um apt-upgrade, então o terceiro passo ficaria assim:

`sudo apt-get update && apt-get upgrade`

Agora sim o apt conseguirá baixar e instalar o pacote da CLI do Azure. Para fazer isso, digite:

`sudo apt-get install azure-cli`

Para terminar, experimente invocar a CLI e veja que a saída do comando deverá ser uma lista de parâmetros a serem usados com a CLI. No shell bash do seu terminal, digite:

`az`

Saída do comando:

![img-final](../img/finalcli.png)
