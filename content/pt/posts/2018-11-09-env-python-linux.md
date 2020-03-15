---
author: Alan Santos
authorEmoji: 👨🏻‍💻
authorDesc: Consultor em TI | Mestre em Sistemas de informação
authorImage: "/images/whoami/avatar.jpg"
categories:
- Dev
date: "2018-11-09T00:00:00Z"
tags:
- Python
- VsCode
title: Configurando o Vscode para programação Python
---

Este artigo tem por objetivo mostrar que é possível criar um ambiente de desenvolvimento completo para Python sem a necessidade de instalar IDEs pesadas como Pycharm, Eclipse entre outras e sem abrir mão da "usabilidade" para o usuário final.

Caso encontre algum erro neste artigo, gentileza encaminhar por email para alansantosmg@gmail.com para correção.

### Para quem é este artigo

Este artigo é voltado para todos (programadores ou não) que pretendem utilizar a linguagem Python e desejam ter um ambiente de desenvolvimento completo, limpo, leve e amigável no qual se tem o **controle completo** sem depender de ferramentas tais como "Anaconda" que acabam impedindo o aprendizado ao criar uma camada de abstração sobre as atividades de configuração.

### Sobre outros editores para desenvolvimento em Python

Alguns puristas preferem desenvolver em Python utilizando o VI Editor, que possui muitas vantagens. Porém, para iniciantes ou para quem tem um pouco mais de pressa, o VI não é amigável e pode se tornar um empecilho, pois além de aprender a programar o iniciante ainda precisa aprender a utilizar e customizar o VI, levando muitas horas para ser produtivo.

Existem editores interessantes que estão entre o espartano VI e as pesadas e complexas IDEs como Pycharm, Eclipse etc, que embora sejam completas de fábrica, também tem uma curva de aprendizado.

Como meio termo existem editores como o Atom, Sublime Text e o VSCode.

O Atom é editor de texto/código  multiplataforma muito utilizado para desenvolvimento, principalmente para Web, mas alguns desenvolvedores consideram lento para iniciar e com alto consumo de memória se comparado a outros editores de sua categoria.

Já o Sublime Text que também é multiplataforma, embora excelente em termos de instalação, usabilidade, flexibilidade, tem a desvantagem de ser pago para uso comercial. Obviamente é possível usar sem pagar, mas isso não seria interessante.

### Sobre o VSCode Editor

O VSCode que é um editor multiplataforma criado e mantido pela Microsoft. Ele possui licença free tanto para uso comercial quanto privado. Roda em Linux, MacOS e Windows e possui instaladores para as 3 plataformas.

Trata-se de um projeto mais novo que o Atom e Sublime Text, contando com uma boa comunidade de utilizadores, um grande número de extensões e vem sendo adotado por muitos desenvolvedores Python e não Python.

O VSCode vem com suporte nativo a GIT com detecção automática de repositórios, Outline, Code Snippets, terminal integrado, file Explorer, file Search e interface para debug e integração com ferramentas de teste.

Além de ser totalmente customizável, o VSCode possui opções para edição avançada de código, possibilitando edição em lote. Ele suporta sintax highlighting e identation para a maior parte das linguagens  como Python, C#, JavaScript, Java, SQL, Objective C, etc e opção para encoding, além de possuir uma interface bastante amigável.

Para saber mais sobre o VSCode: https://code.visualstudio.com/docs/supporting/faq

### Antes de começar

**Não saia baixando o VSCode antes de iniciar a leitura do artigo**. Embora o VSCode já venha no Marketplace de algumas distribuições e no próprio site seja possível baixar um pacote .deb de sua distribuição, esta pode não ser a melhor opção de instalação.

Nos dias atuais, um programador pode trabalhar em diferentes máquinas durante o seu dia (no computador do trabalho, da faculdade, de casa, etc). Pode ser muito chato ter que configurar e manter sincronizado um ambiente de desenvolvimento em cada um desses locais.

Por isso, este artigo foca na configuração de um ambiente portável, que possíbilite ao programador realizar o upload para o Github, google drive, OneDrive ou para um Pen-drive, ou seja, levar seu ambiente de desenvolvimento para onde ele quiser. No artigo veremos como isso é possível.

Caso encontre algum erro neste artigo, gentileza encaminhar por email para alansantosmg@gmail.com para que o mesmo possa ser corrigido.


### Requisitos:

- Estar utilizando o Python 3.x, ter acesso à internet no Sistema onde será feita instalação.
- Estar utilizando distribuições baseadas no Debian tais como:

  * Linux Mint
  * Ubuntu
  * Debian

## Instalação o Python 3 e seu gerenciador de pacotes

Se o python 3 não estiver instalado:

    sudo apt-get install python3
    sudo apt-get install python3-pip

Todos os processos abaixo terão como base o diretório home do utilizador.

## Instalação de Ferramenta de controle de versão

Caso utilize o GIT para controle de versão criar o diretório git dentro do diretório home. Caso não vá utilizar ignorar esse passo.

    sudo apt-get install git -y
    mkdir ~/git


# Ambientes virtuais (Virtual environments)

Um ambiente virtual consiste em um diretório onde estão localizados o intepretador python, bibliotecas e arquivos necessários para rodar a aplicação.

Imagine que sua aplicação precisa utilizar bibliotecas que deverão ser baixadas localmente. E se você tiver 10 aplicações cada uma com conjunto de bibliotecas diferentes? Logo, a instalação global do python de sua máquina ficará cheia de bibliotecas.

Se você não quiser mais ter a aplicação, terá que manualmente desinstalar as bibliotecas. Além do mais, se precisar realizar o deploy da aplicação em outro ambiente, precisará saber quais bibliotecas e qual versão do interpretador python copiar.

Para resolver esse problema é possível criar ambientes virtuais.

Um ambiente virtual nada mais é do que um diretório que contém um conjunto de bibliotecas que será usado por um conjunto de aplicações (ou por uma aplicação só). Ele fica separado do seu ambiente global.

Logo, quando precisar realizar o deploy da aplicação, bastará levar junto esse ambiente e não tudo que está configurado em seu ambiente global.

Quando for desenvolver uma aplicação, basta indicar em qual virtual environment está trabalhando (ou seja qual interpretador e bibliotecas aquela aplicação estará usando).

Felizmente para Linux existem várias ferramentas que automatizam a criação de ambientes virtuais. Para Python3 a ferramenta padrão é o venv.

### Instalando ferramenta venvs:
Para instalar o venv:

    sudo apt-get install python3-venv -y

Uma dúvida que os iniciantes geralmente tem ao criar venvs:

*Na criação de um venv, este deve ficar dentro da mesma pasta da aplicação que está sendo desenvolvida?*

A resposta é **NÃO!**

Não é interessante que um venv fique dentro da pasta da aplicação pelos seguintes motivos:
1. Se ele estiver fora, várias aplicações podem usar um mesmo venv.
2. Ou seja, você só criará um venv novo se ele tiver mesmo que ser diferente de algum existente.
3. Se precisar testar fazer testes com ambientes diferentes basta ativar o venv a ser usado, sem necessidade de cópias.

### Definindo um local para armazenar os ambientes virtuais.
Afim de evitar fazer alterações desnecessárias nos venvs, o melhor é criá-lo como uma pasta escondida dentro do diretório home. Para criar a pasta:

    mkdir ~/.venvs

### Criando um virtual environment.
No exemplo o nome dele será venv_01 e será criado dentro da pasta .venvs

    python3 -m venv ~/.venvs/venv_01

### Ativando o venv para instalar algumas ferramentas importantes no desenvolvimento:

    cd ~/.venvs/venv01/bin
    source ~/.venvs/venv01/bin/activate

Após a ativação o prompt do shell irá mudar indicando que você está usando aquele ambiente python.

### Instalação de Ferramentas para desenvolvimento atualizas com VScode Editor.
Para facilitar a vida do desenvolvedor, o Python dispõe de ferramentas de de verificação de código e de teste de aplicações. Elas já podem estar instaladas no diretório global, mas por questão de padronização e para facilitar a vida do programador, é melhor incluí-las no venv, assim caso esteja sendo utilizado o VSCode como editor, o mesmo reconhecerá automaticamente essas ferramentas quando estiver usando o venv. Dentro do diretório bin do ambiente ativado entre com os comandos:

    pip3 install pylint
    pip3 install pytest
    pip3 install --upgrade pip setuptools wheel
    pip3 list

### Criando um arquivo requirements.txt
O arquivo requirements.txt pode ser criado dentro do ambiente. Ele é útil caso precise refazer o ambiente em outro local. Ele é usado junto com o pip para baixar os pacotes de módulos (bibliotecas) que sua aplicação poderá estar utilizando.

Para criar um requirements.txt inicial, dentro do diretório bin do ambiente ativado entre com o comando:

    pip3 freeze > ~/.venvs/venv_01/bin/requirements.txt

É interessante rodar esse comando depois que aplicação estiver finalizada ou sempre que forem adicionadas ou excluídas bibliotecas.

## Instalação do Editor VSCode (Visual Studio Code)
Antes de iniciar a instalação um lembrete: ao contrário do Sublime, o Vscode é livre. Você não precisa pagar por uma licença para utilizá-lo. Ele funciona perfeitamente no Linux, pois foi desenvolvido com o framework Electron.

### Efetuar download Vscode versão stable para linux compactado em .tar.gz

https://code.visualstudio.com/docs/?dv=linux64

Obs: Tem que ser esse formato, pois a instalação será da versão portável (aquela que o usuário pode levar para qualquer lugar). Não instale a versão .deb.

### Descompactar o arquivo baixado:

    tar -xzvf code*

ou

    tar -xzvf code-stable-1539735949.tar.gz

Obs: o nome do pacote pode variar dependendo da versão baixada.


### Movendo o VSCode para o diretório home
Após descompactação, mova o diretório criado para localização que quiser.

Supondo que o pacote foi baixado e descompatado no diretório ~/Downloads, para movê-lo para o seu diretório home, utilize o comando:

    mv ~/Donwloads/VSCode-linux-x64 ~/

ou

    mv /home/nomedomeuhome/Downloads/VSCode-linux-x64 /home/nomedomeuhome/VSCode-linux-x64

### Configurando armazenamento das preferências do Editor
Criar o diretório data dentro do diretório do vscode. Esse diretório será usado para guardar as preferencias setadas no Editor e extensões instaladas. Assim, o seu ambiente de trabalho poderá ser restaurado em qualquer máquina posteriormente. Se o Vscode houver sido movido para o home:

    cd ~/VSCode-linux-x64
    mkdir data

Isso permitirá que as preferências e extensões do Editor sejam salvas necesse diretório.

Caso precise você pode mover o diretório do VSCode inteiro para um pendrive ou para a nuvem ou então apenas mover o diretório data para algum outro local e depois copiá-lo para dentro de um diretório descompactado do VSCode.

### Atualização de Versão do VSCode portável
Se sair uma nova versão do VSCode a melhor forma de migrar é descompactar essa versão em um novo diretório e mover o subdiretório data para da pasta da nova versão do VSCode.

### Configurando o VSCode para trabalhar com Python.
Após ter criado o diretório Data, dentro da pasta do VSCode, vamos iniciar o editor. Para isso, dentro da pasta do Vscode execute:

    ./code

Clicar em Extensions na barra lateral esquerda. Buscar e instalar as  extensões listadas abaixo. Git e docker somente para quem pretende utilizar no desenvolvimento. A Extensão Python é mandatória:

* Python
* Git Merger
* Git History
* vscode-icons
* docker

### Configurando VSCode para trabalhar com venv
Após criar o diretório .venvs e criar ao menos um venv, abrir o vscode ir em Settings e na caixa de busca procurar por `python.venvPath`

Na caixa de texto da variável usar o seguinte path:

    ~./venvs

Reiniciar o vscode.

### Selecionando um venv para utilizar

Abra ou crie um arquivo.py no VSCode.

Na barra de status do VScode, clicar sobre a palavra Python e escolha na caixa que se abrirá o venv que deseja utilizar. Por padrão, além do ambiente global do sistema operacional, serão listados todos os venvs abaixo de ~/.venvs, já que o path para busca automática foi setado no passo anterior.

Basta escolher qual venv quer utilizar que o ambiente será ativado automaticamente com todas suas bibliotecas.

Como no venv instalamos o pytest e pylint, o VSCode reconhecerá automaticamente essas ferramentas quando o ambiente estiver sendo utilizado. Não é preciso fazer ajustes no arquivo Settings.

Note que o VSCode não ativa o venv nos terminais externos que não estão sob a sessão do VSCode. Ele só faz isso para os terminais internos.

Para ativar o venv fora da sessão do vscode, caso seja necessário, basta usar o procedimento normal de ativação do venv dependendo do tipo de ferramenta de virtual environment que estiver utilizando.

### Configurando VSCode para encontrar repositórios GIT locais:
Executar os passos abaixo **somente se o VSCode não encontrar automaticamente os repositórios GIT**. Por padrão o VSCode consegue detectar o repositório Git apenas abrindo a pasta que contém os repositórios. Caso ele não consiga, faça o seguinte:

1. Ir em settings, user settings e na caixa de busca digitar  git

2. Verificar se a opção  está setada para TRUE

    `Git: Auto Repository Detection`
    `TRUE`

3. Setar o path de  para o diretório onde os repositórios do github serão clonados. Exemplo:

    `Git: Default Clone Repository`
    `~/git`

4. Setar o path onde o VScode escaneará por repositórios git.
    * Em `Git:Scan Repositories` clicar em `Edit in settings.json`
    * Na tela seguinte copiar as duas linhas da esquerda para direita clicando no ícone de lapis.
    * No lado direito substituir o [] por `["~/git"]`, ou pelos diretórios onde estão os repos.
    * Exemplo de como deve ficar a linha do lado direito:

    ` "git.scanRepositories": ["~/git]" `

5. Salvar o arquivo User Settings e reiniciar o VSCode.

## O que foi feito
Pronto! Agora é é possível usar o VScode para desenvolver em Python com as seguintes funcionalidades:

* Code snippets
* Code highlight customizado para Python
* GIT: Criar e aternar branches, fazer commits, push and pull para github etc.
* Testar código com pytest (Detecção e execução automática de arquivos _test ou test_
* Usar o Debug
* Rodar aplicação usando terminal interno do VScode.
* Usar virtual environments com aplicação facilitando o deploy
* Possibilitar copiar o VScode e/ou suas preferencias para qualquer lugar.

## Referências:

https://code.visualstudio.com/docs

https://code.visualstudio.com/docs/python/python-tutorial

https://code.visualstudio.com/docs/python/environments

https://code.visualstudio.com/docs/python/debugging

https://code.visualstudio.com/docs/python/linting

https://code.visualstudio.com/docs/python/unit-testing

https://git-scm.com/book/pt-br/v2

https://pythonacademy.com.br/blog/python-e-virtualenv-como-programar-em-ambientes-virtuais

https://pythonhelp.wordpress.com/2012/10/17/virtualenv-ambientes-virtuais-para-desenvolvimento/

https://fedoramagazine.org/vscode-python-howto/

https://www.reddit.com/r/learnpython/comments/4hsudz/pyvenv_vs_virtualenv/
