#!/bin/bash
echo "Qual o título do post?"
read titulo
mydate=`date "+%F"`
hugo new posts/$mydate-$titulo.md
echo "Post criado!"
echo
cd content/pt/posts
