---
author: Alan Santos
authorEmoji: 👨🏻‍💻
authorDesc: Consultor em TI | Mestre em Sistemas de informação
authorImage: "/images/whoami/avatar.jpg"
categories:
- DevOps
date: "2018-11-07T00:00:00Z"
description: Para facilitar a instação do Docker no Ubuntu Bionic Beaver, criei um script de instalação em Shell. Ele pode ser adaptado para outras versões do Ubuntu.
tags:
- Docker
title: Script de instalação do Docker para Linux Mint
image: images/feature3/code-file.png
---
O script abaixo tem por objetivo facilitar a instalação da versão mais atualizada do Docker com todas suas dependências, no Linux Mint.

```bash
 #!/bin/bash

# This shell script installs docker on Linux Mint 19 - Tara.
# You are free to share it.
# Autor: Alan Santos.

echo 'Removing Docker previous version'
sudo apt-get remove docker docker-engine docker.io -y
sudo apt-get update -y
sleep 3
echo 'Installing pre-requisites'
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
sleep 3
echo 'Registering Docker repo'
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88 -y
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" -y
sudo apt-get update -y
sleep 3
echo 'Getting Docker'
sudo apt-get install docker-ce -y
sleep 3
echo 'Testing docker'
docker run hello-world
```
