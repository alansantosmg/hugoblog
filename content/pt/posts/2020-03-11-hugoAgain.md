---
title: "Retornando ao Hugo"
meta_image: images/meta/hugo.png
description: "Após passar por 4 tipos de plataformas de geração estática de conteúdo, voltar ao HUGO parece ser a decisão mais coerente no momento."
author: Alan
categories:
- Dev
date: "2020-03-11T15:34:54Z"
tags:
- HUGO
- Go
---

## O longo caminho de volta

Em 2019 iniciei minha empreitada para estabelecer meu espaço na web, independente das redes sociais.
A opção de não trabalhar com plataformas de blog tradicionais,  possibilitou experimentar tecnologias de ponta, como geradores de conteúdo estático (server less), CDN's, CI/CD.

Minha jornada compreendeu o seguinte caminho:

* Comecei pelo Jekyll, um gerador de conteúdo estático em Ruby mais alinhado com Github. Optei por ele por ser o mais simples de configurar e gerar deploy na conta que eu já possuía no Github.

* Cheguei a testar o Gatsby - gerador de conteudo estático em React, mas logo acabei desistindo, pois estou estudando Javascript puro. Achei melhor não aprender React pelo menos até consolidar meus conhecimentos em JS sem auxílio de frameworks.

* Fui então para o Hugo - gerador de conteúdo estático em GO. Esse, me pareceu ser muito mais rápido do que os outros. Também gostei da estrutura do projeto. Fiz alguns testes, reconfigurando o blog inteiro nele, mas não cheguei a fazer um deploy. Eu ainda não tinha visto nada sobre a linguagem GO, então resolvi seguir para outra plataforma que fosse em Javascript.

* Encontrei o Hexo - Gerador de conteúdo estático em Javascript Vanilla. O projeto é bem interessante. Estudei alguns temas e no final do ano fiz deploy usando essa plataforma. Tive um trabalhão para traduzir o tema de chinês para português. Senti falta de materiais em inglês. O projeto é bem documentado, mas creio que vale muito dar uma olhada no que as pessoas vem produzindo na comunidade.

* Voltei para o Jekyll, que é feito em Ruby, mas pelo menos tem vasto material em inglês, é vastamente utilizado por usuários do github e tem a vantagem de ser simples mesmo de fazer o deploy. Esta era a plataforma que estava usando até dois dias atrás. Funciona que é uma beleza e os temas são fáceis de setar, customizar, mas tem algo que estava me incomodando muito: justamente o fato de ser em Ruby. Eu não vou estudar Ruby tão cedo, então para quem está aprendendo outras linguagens essa é uma restrição considerável.

* Retornei ao HUGO. Quando instalei da primeira vez, fiquei curioso e fui conhecer a linguagem. Agora já tem alguns meses que estou estudando firme o Golang e vejo nessa linguagem, boas perspectivas. A experiência adquirida nas outras plataformas, está me possibilitando também uma experiência melhor com o HUGO.


* Netlify - CDN com C/ Continuos Integration/Continuous Deploy.

Passar por todas essas plataformas demandou quase um ano de estudo. Porém, todo o trabalho ajudou a entender sobre tecnologias server-less sob várias perspectivas.

Por hora, ficarei no HUGO como plataforma principal por alguns motivos bem específicos à minha realidade:

* Particularmente acho que a organização física do projeto HUGO tem boa separação entre conteúdo, plataforma, temas e customizações de tema. Para mim, essa característica é importante pois facilita bastante a tarefa de customização do site e me permite experimentar mais, quebrando menos.

* Vejo vantagem no fato do HUGO ser desenvolvido em GO, uma linguagem desenvolvida pelo Google e que ao meu ver ganhará boa popularidade nos próximos anos. Não por acaso, é a linguagem que estou adotando como primária para aprendizado, juntamente com o Javascript. Ao invés de instalar uma versão compilada, optei por baixar os fontes do Hugo e compilá-los diretamente na minha máquina. Assim posso estudar em detalhes de como vem sido de desenvolvido e quem sabe, futuramente até poder dar minha contribuição em código.

Por enquanto, resolvi dar o deploy do blog já convertido para HUGO,  no Gitbhub, mas dentro de alguns dias devo virar para o Netlify, já que a plataforma possui os processos de CI/CD, os quais também estudo, além de oferecer melhor performance na entrega de conteúdos.

Então Let's "GO" 2020!
