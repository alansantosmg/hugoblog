---
author: Alan Santos
authorEmoji: 👨🏻‍💻
authorDesc: Consultor em TI | Mestre em Sistemas de informação
authorImage: "/images/whoami/avatar.jpg"
categories:
- DevOps
date: "2019-10-07T00:00:00Z"
description: Onde está o ifconfig? iwConfig? A Canonical mudou a forma como as intefaces de redes são configuradas no Ubuntu Server. Montei um passo-a-passo para facilitar a vida.
tags:
- Linux
title: Configurando ip estático no Ubuntu Server
---
Desde a versão 18.04, a Canonical mudou a forma como as interfaces de rede são configuradas no Ubuntu Server. Não devemos mais editar o arquivo /etc/networks/interfaces, como tem sido feito há anos, da forma tradicional. Ele foi substituído pelo netplan.

O netplan utiliza um arquivo de configuração  .yaml que precisa ser escrito usando identações com espaços em branco (se usar tabulações, não é processado pelo netplan). Outra questão importante é que a indentação precisa ser consistente para o arquivo ser processado.

Embora muitos estejam acostumados ao método antigo, o novo nada tem de difícil ou misterioso. Faremos um exemplo.

Abra um terminal e vá para o diretório `/etc/netplan` usando o comando `cd /etc/netplan`.

Antes de efetuar a configuração, é preciso saber qual interface de rede iremos configurar. Para saber quais interfaces temos disponíveis, podemos usar o comando `ip addr`.

Uma vez dentro do diretório digite o comando `ls` para verificar a existência do arquivo 50-cloud-init.yaml. Se no mesmo diretório não existir o arquivo 01-netcfg.yaml, devemos criá-lo com o comando `sudo touch 01-netcfg.yaml`

Uma vez criado o arquivo, devemos editá-lo. `sudo nano 01-netcfg.yaml`.

Antes de mostrar como o arquivo deve ser preenchido, algumas observações importantes:

- os parâmetros são configurados no estilo `chave: valor`;
- a configuração de rede e máscara ficam em uma linha só;
- como se trata de ip estático dhcp4 deve ser `no`;
- onde há mais de um parâmetro do uso de `[]` como delimitador é obrigatório;
- a identação dos parâmetros deve ser `feita com espaços em branco` e segue uma lógica. Ou seja: eu tenho uma rede e dentro da rede eu tenho um conjunto de interaces do tipo ethernet e dentro deste conjunto eu tenho uma interface de rede que tem suas configurações e nas configurações eu ainda tenho servidores DNS (nameservers) que tem seus endereços.

Se formos configurar por exemplo uma interface de rede nomeada `enp0s3` com endereço ip estático: 192.168.56.4, máscara de rede 255.255.255.0, gateway 192.168.56.1 e os servidores DNS do Google 8.8.8.8 e 8.8.4.4, o arquivo deve ficar como no exemplo abaixo:

```YAML
network:
  version: 2
  renderer: networkd
  ethernets:
    enp0s3:
      dhcp4: no
      addresses: [192.168.56.4/24]
      gateway4: 192.168.56.1
      nameservers:
        addresses: [8.8.4.4,8.8.8.8]
```

Após configurar o arquivo, utilizando seus parâmetros, salve-o e a seguir execute o comando `sudo netplan apply`, no terminal.

Se o arquivo estiver bem formatado e com parâmetros corretos, ele irá reconfigurar sua interface de rede e tudo estará ok. Se algum parâmetro estiver incorreto ou houver inconsistência na identação, o netplan retornará uma mensagem de erro.

Erros comuns:

- arquivo identado com tabulações ao invés de espaços em branco;
- esquecer os [] nos locais apropriados;
- usar parametros no singular como adress ao invés de adresses, ethernet no lugar de ethernets, e nameserver no lugar de nameservers.
- esquecer dos : entre chave e valor;
- não colocar a mascara no lugar a propriado. Para 255.255.255.0 deve ser 24.
- não digitar o nome correto da interface de rede no arquivo.

Outra maneira de saber ser o netplan funcionou direitinho e se as configurações foram aplicadas é através do comando `sudo netplan --debug apply`.

Para configurar mais de uma interface de rede, é possível através da criação de outros arquivos, como 02-netcfg.yaml e assim por diante.

É isso. Espero que tenham gostado.
