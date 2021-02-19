+++
author = "alan Santos"
title = "Múltiplas distribuições Linux 2020-2021"
date = "2021-02-19"

+++

👨🏻‍💻 Olá pessoal!

Entre 2020 e 2021 testei uma série de distribuições Linux, tanto por motivos profissionais quanto pessoais. Hoje farei um pequeno resumo sobre a experiência:

## Ubuntu 20.04

Esta foi a primeira distribuição testada em 2020. A príncipio, fiquei impressionado pelas melhorias na interface Gnome, que evoluiu muito em termos de responsividade, embora estivesse com um consumo de CPU alto (na casa de 10%) mesmo quando o S.O estava totalmente ocioso.

Um problema em particular me fez sair desta distribuição:

Sem nenhuma razão aparente em determinados momentos do dia, o DNS resolver parava de funcionar, embora a conexão com a internet continuasse ok.

Precisei passar dias e dias pesquisando por uma solução e acabei descobrindo que tratava-se de um bug do Nsswitch, que afetava inclusive versões mais antigas da distribuição.

Outro ponto negativo era o fato de apesar da melhora sensível da responsividade do Gnome, eu ainda não o achava suficientemente responsivo para algumas operações.

Um problema irritante é o fato da rolagem de página com mouse ser excessivamente lenta nos navegadores web. Para resolver isso é preciso instalar o pacote Imwheel, colocá-lo para iniciar junto com a interface gráfica e ainda rodar um pequeno script que cria um arquivo de configuração na pasta home do usuário, definindo uma rolagem mais agressiva do mouse na paginação.

Outro problema é o fato do editor Vim travar se o usuário executar a sequência Ctrl+S, erroneamente. Para corrigir isso é preciso adicionar um parâmetro no arquivo .bashrc .

## Arch Linux

Comecei a instalar mas confesso que deu preguiça. Se for para fazer as coisas na mão, acho que ainda prefiro o Slackware que foi a distribuição onde aprendi Linux e a qual considero a melhor existente.

## Mx Linux

Cheguei a baixar e experimentar a última versão disponível. Achei o sistema muito rápido, principalmente no boot. Cheguei a usar por uma semana, mas de repente o atualizador do sistema quebrou sem motivo aparente.

Uma coisa que todo mundo gosta porém me incomodou, é a existência das MX-Tools. São ferramentas de administração muito específicas. Acho que prefiro trabalhar com ferramentas padrão das distribuições baseadas no Debian. Não vejo valor naquilo que é específico demais, pois o conhecimento não é útil para usar em outro lugar.

## Linux Mint 19 - XFCE

Quando fui instalar um sistema operacional mais leve para um notebook que iria deixar com minha filha para que ela pudesse assistir aulas virtuais, acabei optando pelo Linux Mint 19, justamente para tentar correr do bug do nsswitch do ubuntu.

Embora a base das distrbuições seja a mesma, o time do Mint faz um trabalho melhor no "polimento do sistema" que o próprio pessoal da Canonical.

Esta distribuição ainda está rodando na máquina da minha filha e até agora não apresentou nenhum problema. É preciso ressaltar que ela usa somente o navegador, câmera e microfone para aulas no Zoom.

No Mint, tanto o bug do Mouse quanto do Vim prosseguem "herdados da base do Ubuntu".

## Debian 9

O Debian, foi outra distribuição na qual construí meu aprendizado sobre Linux, anos atrás. 

Instalei o Debian em uma máquina virtual que seria utilizada em uma empresa como servidor para o software de helpdesk GLPI. Não me impressionou.

O desempenho me pareceu ok, mas tive problemas na configuração do teclado para PT-BR. Fiz de tudo e não encontrei uma solução satisfatória. Como estava sem tempo, troquei pelo Ubuntu server 20.10.

## Ubuntu Server 20.10

O instalador do Ubuntu Server é uma mão na roda. Conseguiu ler e pegar credenciais no Github, configurou o teclado perfeitamente sem problemas, e também as placas de rede, tipo de endereçamento, ip, networks, tudo de forma muito mais simples e inteligente que no Debian.

Resultado: Ao término da instalação o servidor já fica 100% operacional. Outro detalhe importante, o tamanho da máquina virtual ficou menor que o Debian.

Tive um pouco de dificuldade em assimilar o Netplan (nova forma de configurar endereçamento de rede), que precisei usar para algumas configurações de interface de rede ip. Porém depois de aprendido, achei fácil e até mais intuitivo.

Esta máquina ainda está rodando perfeitamente na empresa com o GLPI instalado.

**Para servidores, O Ubuntu Server definitivamente é meu SO preferido.**

## Ubuntu Desktop 20.10 - Gnome

Resolvi dar uma nova chance ao Ubuntu em sua última versão no meu notebook pessoal. Diziam que seria mais otimizado para máquinas modestas (meu processador é da geração 7).

O O Ubuntu 20.10 desktop tem uma sequência de boot significativamente mais rápida que a versão anterior e o Gnome ficou aceitavelmente responsivo. Porém mesmo sem nada rodando, o indicador de CPU mostrava um consumo constante, oscilando entre 2% e 5%, sem nenhuma razão aparente.

Definitivamente o Gnome ainda não está suficientemente otimizado e penso que só faz mesmo sentido para máquinas high end.

Os mesmos problemas das versões anteriores ainda estão presentes:

- bug do nsswitch que faz o DNS parar de resover
- bug da rolagem do mouse na paginação dos navegadores
- bug do travamento do Vim com Ctrl + S

Como instalei em uma máquina nova (notebook HP), dois novos problemas surgiram:

- erro na instalação, que só consegui corrigir ao adicionar o parâmetro de inicialização do Linux  pci=nomsi,noaer  no GRUB.
- erro no initramfs que foi corrigido ao trocar um parametro de compactação no arquivo intramfs.conf

## Xubuntu 20.10 - XFCE

Em face ao consumo chato de CPU do Gnome, resolvi mudar para o Xubuntu. O XFCE é feio que dói, mas o desempenho impressiona. Consumo quase zero de cpu quando está ocioso.

Os mesmos problemas encontrados na versão com Gnome também estão presentes nessa distribuição.

Sinceramente, acho que a Canonical poderia ter feito um trabalho melhor, corrigindo definitivamente esses pequenos bugs bobos que acabam afastando usuários menos experientes.

## Kubuntu 20.10

Depois de passar uns 2 meses usando o Xubuntu com alguns pequenos travamentos de aplicação ocasionais, mensagens de erro no XFCE, um log problemático aqui e ali, resolvi experimentar o Kubuntu.

Sobre o Kubuntu, a primeira a coisa a dizer é: O KDE plasma 5 é lindo! Tão responsivo quanto o XFCE e com um consumo de ram e cpu bem interessantes para uma interface tão avançada. Sim, o KDE não é para qualquer um.

No KDE é possível configurar praticamente todos os aspectos da interface. O gerenciador de arquivos Dolphin, já vem com terminal embutido. Basta teclar F4. Achei super prático.

Os efeitos do KDE são de tirar o fôlego e mesmo o tema padrão já é bonito por natureza. Com 1 clique é possível fazer ele ficar como um MAC/OS, pois há temas que imitam praticametne todos os detalhes desse SO.

Os bug das demais versões do Ubuntu, não existem no Kubuntu. Em compensação, outros problemas foram encontrados.

O principal deles é um executável chamado baloo_file. Trata-se de um indexador que em determinados momentos fica fazendo o HD estalar ao fazer seu trabalho, além de consumir alguns ciclos de CPU.

Outro problema que achei grave: não tem opção para configurar teclado ABNT2 na interface. Passei dias pesquisando por uma solução definitiva e não consegui encontrar.

Para resolver, precisei criar um script que roda na inicialização da interface e que executa um comando setxkbd com os parâmetros para teclado ABNT2. Funciona, mas considero como um RTI (recurso técnico improvisado), ou seja: gambiarra. 

Odeio gambiarras, mesmo quando elas funcionam!

Eu só descobri que o teclado não estava funcionando corretamente quando precisei digitar um texto no Write. 

Cheguei a refazer a instalação, achando que tinha esquecido algum passo, mas na segunda tentativa, descobri que o **instalador não tem uma opção para testar o layout de teclado** escolhido, como existe em outras versões do Ubuntu

Como puderam cometer um erro crasso desses?

Fora isso, algo inusitado aconteceu: por algum motivo desconhecido, foi retirada do arquivo Group a associação de minha conta de usuário para rodar comandos como root usando o comando sudo. Achei super bizarro isso!

Consegui resolver fazendo um "boot de reparo" através do Grub, mas isso me deixou com a pulga atrás da orelha: Como confiar num sistema desses?

Um terceiro problema foi o fato do meu headphone bluetooth travar algumas vezes e ter comportamentos estranhos quando estava sendo utilizado. Descobri isso da pior maneira possível: ao fazer uma entrevista de emprego pelo Google Meeting. Fui salvo pelo meu celular, que felizmente estava carregado no momento.

Sem dúvida alguma o KDE é fantástico como interface gráfica. Tem muitas opções de configuração, sendo moderno e interessante. Dele, creio que o Windows copiou várias coisas (nem tudo a Microsoft conseguiu). Acho que só perde mesmo para interface do MAC.

Pena que ainda não achei estável o suficiente para uma máquina de produção.

## Linux Mint 20 - XFCE

Depois de me estranhar com a falta de estabilidade do KDE, resolvi partir para a última versão disponível do Mint na interface XFCE.

No Mint 20 ainda existem alguns bugs conhecidos da base do Ubuntu:

- problema da rolagem do mouse
- problema do initramfs
- problema do pci nos parâmetros do linux no Grub
- problema de travamento do wifi após a suspensão

Para esses problemas eu já tinha soluções funcionais documentadas, então ok.

Dois novos bugs foram encontrados:

- a lentidão da internet no wifi ao usar junto um fone de ouvido bluetooth
- hora do sistema com 3 horas de atraso, por causa do dualboot com Windows

**Uma das coisas legais do Mint é o seu fórum de suporte.** Tem solução para quase tudo lá e a comunidade é muito amigável. Acho que esta sem dúvida é maior vantagem do Mint.

Rapidamente encontrei a solução para os dois novos bugs.

No Mint 20, o XFCE é bem mais polido que no Ubuntu. Não só ele, a própria distribuição em si me parece "menos bugada". O erro do nsswitch por exemplo não existe. Não ocorrem erros durante a execução do XFCE. Os logs estão limpos! O consumo de CPU é menor do que no Xubuntu, além de variar menos quando se abre outros aplicativos como Chromium ou Vscode.
O consumo de memória também me pareceu mais constante.

A loja de aplicativos funciona mil vezes melhor do que a loja do Ubuntu. Ponto para Flatpack Store sobre a Snap Store que é tremendamente bugada no Ubuntu.

No Xubuntu, alguns aplicativos tinham comportamento estranho, como o Firefox que de uma hora para outra consumia uma quantidade absurda de RAM e ficava lento sem motivo algum, em páginas as quais eu estava acostumado navegar. O mesmo acontecia com o Chrome.

Para o Virtualbox da Snap Store funcionar direito no Xubuntu, precisei fazer vários "cambalachos" na linha do comando.  No Mint: instalar e usar.

No Mint, as aplicações simplesmente não travam e não ficam lentas se permanecem muito tempo abertas.

Isso tudo me faz concluir que no Ubuntu na versão oficial com Gnome as coisas funcionam bem melhor que nas variantes Xubuntu e Kubuntu.

Se o Gnome ainda não fosse "pesadão" demais para minha máquina, certamente seria a versão que estaria usando. Acho que o time do Gnome está no caminho certo não vai demorar muito para que tornem sua interface tão leve quanto é produtiva.

Até lá, fico no Mint. O XFCE tem uma interface espartana e mais simples que o Mate e Cinnamon, mas entrega o que promete: é leve, funcional.

Já o SO, é estável o suficiente para uso profissional. Nele posso abrir 20 abas no navegador sem dó, rodar o Vscode, máquinas virtuais, compilar programas em Go, ouvir música ou assitir ipTV, sem consumir totalmente os 8gb de ram e sem perder responsividade.

Farei um post específico sobre os pequenos bugs encontrados no Ubuntu/Mint e as respectivas soluções que encontrei e estou utilizando.  

## Distribuições baseadas em pacotes RPM

Para 2021 estou querendo experimentar uma distibuição rpm like. Ainda não me decidi qual.

Tem o Fedora, mas acho que ele é muito "on the edge", por ser palco de teste de tudo que vai entrar posteriormente no RedHat.

Tem o OpenSuse, que me parece interessante para estudo, mas fico desanimado pelos relatos de desempenho que não impressiona, apesar da estabilidade.

O maior candidato era o CentOS. Porém, a mudança de fixed release para rolling release trouxeram incertezas quanto à distribuição, pois pode prejudicar justamente a estabilidade que era um ponto forte do CentOS. A RedHat está tentando matar a concorrência que ela mesma criou.

Por por isso, aguardarei um pouco. Seja como for, em bare metal continua o Mint 20 XFCE, sólido como uma rocha.

Que sigam os jogos em 2021.
