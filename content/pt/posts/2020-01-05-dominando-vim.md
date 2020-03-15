---
author: Alan Santos
authorEmoji: 👨🏻‍💻
authorDesc: Consultor em TI | Mestre em Sistemas de informação
authorImage: "/images/whoami/avatar.jpg"
categories:
- Dev
description: Para começar 2020 com o pé direito, resolvi aprender algo novo. Saiba porque escolhi aprender a utilizar efetivamente o Editor Vim e de quebra aprenda alguns atalhos de teclado interessantes.
date: "2020-01-05T00:00:00Z"
tags:
- Linux
- Vim
series:
- Configurando o Vim p/ dev web
title: Principais comandos do Editor Vim
---
Resolvi começar o ano aprendendo algo novo. Nada melhor do que eliminar um antigo trauma:
O medo do vim, o poderoso e temido editor do Linux!

Só existe uma maneira de dominar o Vim: usando! Então, desinstalei o Vscode e passei a usar  o
vim efetivamente para todas as tarefas.

Nessa aventura, acabei criando uma lista para
consulta rápida dos atalhos mais usados. Assim eu posso abrir o arquivo que estou editando em
uma janela do vim e minha lista de atalhos numa janela lateral (vertical split), onde posso
consultar rapidamente o comando que estou procurando, sem perder o foco no trabalho.

Segue abaixo a lista de atalhos que uso efetivamente no vim. Se quiser, é só copiar e salvar em
algum arquivo.txt para consulta, assim como faço.

Feliz 2020!

```
## Comandos vim

### Entrada e saida (modo normal)
:new arquivo    ## abre segundo arquivo split horizontal'
:edit arquivo	## abre outro arquivo
:vnew arquivo   ## abre novo arquivo split vertical
:split arquivo  ## abre novo arquivo
:q		## sair do vim
:q!         	## forca saida do vim
:w		## salva arquivo
:x		## salva e sai (se modificado)
:w novonome	## salva como novo nome
:saveas novon	## salva cmoo novo nome e muda p/ novo arquivo
:wq		## salva arquivo e sai
:10,20 w! novo	## salva da linha 10 a 20 em novo arquivo
:enew!		## não salva e abre novo
:Vex		## Abre file explorer na vertical
:e .		## abre file explorer na janela atual
vim .		## abre o vim com file explorer
'0		## solicitar reabertura do ultimo arquivo aberto
'1		## solicitar reabertura do penultimo arquivo aberto
:bp		## vai para arquivo anterior
:bn		## vai para proximo arquivo
:wn		## salva e vai para proximo arquivo
:shell		## abre shell (exit para voltar
:!		## run external comando
:terminal	## abre shell numa janela


### buffer de arquivos
badd		## adiciona arquivo ao buffer
bn		## next file of buffer
bp		## arquivo anterior
ls		## lista arquivos do buffer
b1		## carrega arquivo 1 do buffer
bdelete		## apaga arquivo do buffer
split #2	## carrega arquivo 2 do buffer em janela horizontal
vplit #2        ## carrega arquivo 2 do bufffer em janela vertical


### janelas
ctrl wn		## abre nova janela sobrepondo atual (:new)
ctrl wq		## fecha janela atual (:quit)
ctrl wc		## fecha janela atual
ctrl ws		## Divide janela em duas (:split)
ctrl wo		## Faz janela atual ser unica (:only)
ctrl w w 	## alterna entre janelas
ctrl wj		## desce uma janela
ctrl wk		## sobe uma janela
crtl wr		## rotaciona janelas
ctrl w+		## aumenta espaço da janela
ctrl w-		## diminui espaço da janela
:hide		## esconde a janela sem fechar buffer
:wall		## salva todas janelas abertas
:qall		## sai de todas janelas
:res +5		## aumenta janela horizonal 5
:resize 60	## janela horizontal 60
:vertical resize 80
:vertical resize +5


### abas
tabnew file	## abre arquivo em nova aba
tabnext		## avanca proxima aba
tabprevios	## retorna aba anterior


### Ações (modo normal)
d		## deletar
dd		## deletar linha
i		## inserir
I 		## inserir no inicio da linha atua
a 		## inserir apos caracter atual
A		## inserir no final da lina atual
o		## insert na linha abaixo (nova linha)
O		## insert na linha acima (nova linha)
p		## colar abaixo
P		## colar acima
y		## copiar
yy		## copiar linha
x		## recortar
x		## apagar uma letra
xx		## recortar linha
u		## desfazer (undo)
di		## deletar dentro
yi		## copiar dentro
v		## visual / seleção
/		## buscar (find) n proxima ocorrencia
// 		## repete ultima busca
%		## busca fechamento de parenteses ou chave
:s		## substituir (replace)
:50		## vai para linha 50
50gg		## vai para linha 50
A		## iniciar insercao no fim da linha
I		## inciar insercao no inicio da linha
J		## Remove break line da linha atual c/ anterior
ZZ		## sai do arquivo e salva


### Movimentos (modo normal)
e		## fim da palavra atual
b		## incio palavra anterior
w		## inicio proxima palavra
hjkl		## esquerda baixo cima direita
$ 		## fim da linha
0		## inicio da linha
G		## fim do arquivo
nG		## pular para linha n
)		## avançar uma frase
}		## avançar um parágrafo
gg		## vai pra linha 1 do arquivo
H		## vai para primeiro caracter da tela
M 		## poe cursor no meio da tela
L		## vai para ultima linha da tela
*		## salta proxima ocorrencia da palavra
ctrl f		## page foward
ctrl b		## page back
zt		## cursor no topo da pagina
zm		## cursor no fim da pagina

###  alteracoes (modo normal)
g,		## avança lista de alteraçoes
g; 		## retrocede lista de alterações
u		## desfaz ultima mudança
:changes	## ver lista de alterações
:h changes	## lista de alterações detalhadas
UU		## desfaz mudanças da linha editada
ctrl -r 	## refaz mudanças desfeitas  undo undo


### comandos modo insert
ctrl y 		## copia caracter caracter linha acima
ctrl e 		## copia caracter caracter linha abaixo
ctrl w ctrl f	## abre arquivo sob cursor na janela atual
Shift insert	## inserir texto da area de transferencia


### modo visual
v 		## seleção de caracteres
V		## selecão de linhas inteiras
^V		## seleção de blocos


### Marcas
ma		## cria marca a em modo normal
'a		## move cursor até marca a
d'a		## delete ate a marca a
y'a		## copia ate a marca a


### Exemplos:
d$		## apaga até o final da linha
d^		## apaga até o inicio da linha
dG		## apagar até o final do arquivo
dl		## apagar uma letra
D		## apagar resto da linha
d3j		## deletar 3 linhas abaixo
yw		## copiar proxima palavra cursor no inicio
yiW	        ## copiar palavra (c/ caracteres especiais ) curso no meio
10j		## avançar 10 linhas
di}		## apagar tudo dentro das chaves
2{		## subir 2 paragrafos
5p 		## colar selecao atual 5 vezes
i		## Editar onde o cursor apresentar "I can vim now"
ayy		## copia linha atual para registrador a
ap		## cola registrador a
fx		## vai ate proxima ocorrencia de x
dfx		## deleta ate proxima ocorrencia de x
ctrl f		## page foward
ctrl b		## page back
gi		## insert no ultimo ponto de edição
gv		## repete ultima selecao visual
gf		## abre arquivo sob o cursor
:s:/foo/bar	## substitui foo por bar na linha atual
:1,10 s/foo/bar ## substitui foo por bar até a 10a linha
:% s/foo/bar	## substitui foo por bar no arquivo todo
:1,$ s/foo/bar	## substitui foo por bar no arquivo todo


### configuracoes
set number	## show line numbers
set nonumber	## ride line numbers
set relativenumber ## set relative linenumber
set norelativenumber ## unset relative linenumber
```
