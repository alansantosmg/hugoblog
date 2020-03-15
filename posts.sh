#!/bin/bash
echo "Qual o título do post?"
read titulo
cd ~/blog/github.com/alansantosmg/hugoblog
mydate=`date "+%F"`
hugo new posts/$mydate-$titulo.md
echo "Post criado!"
echo
cd content/portuguese/posts
