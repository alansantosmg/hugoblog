---
author: Alan Santos
authorEmoji: 👨🏻‍💻
authorDesc: Consultor em TI | Mestre em Sistemas de informação
authorImage: "/images/whoami/avatar.jpg"
categories:
- DevOps
date: "2019-07-03T00:00:00Z"
description: Como tenho preguiça de ficar copiando o .gitignore de um lado para outro, resolvi fazer um script shell para tomar conta desse trabalho.
tags:
- Git
title: Script para criar arquivo gitignore
image: images/feature3/code-file.png
---
O .gitignore é um arquivo oculto que deve ficar dentro da raiz do seu repositório git. Ele é usado para fazer o git ignorar determinados tipos de arquivo durante as operações de commit. Ele existe justamente para que seu branch de produção possa ficar limpo de arquivos desnecessários. É possível criar um gitignore para cada repo, porém essa operação pode ser automatizada via shell script. Crie um novo arquivo, com o nome de gitignore-create.sh, cole nele o código abaixo, salve e execute-o nos diretórios de seus repositórios git. O mais interessante é que esses comandos podem ser incluídos em um shell script mais completo, feito para fazer todo o setup de seu projeto.

```bash
cd ./.git
touch gitignore
echo "*.log" >> gitignore
echo "*_pycache_" >> gitignore
echo "*.[oa]" >> gitignore
echo "*~" >> gitignore
echo "!lib.a" >> gitignore
echo "*.pyc" >> gitignore
echo ".vscode" >> gitignore
echo "*.vscode" >> gitignore
echo "settings.json" >> gitignore
echo
sleep 2
clear
echo "Arquivo gitignore criado em ./.git"
echo "Não monitorando (ignorando): "
sleep 2
echo "---------------"
cat gitignore
echo "---------------"
sleep 10
echo
```
