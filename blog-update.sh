#!/bin/sh

cd ~/blog/github.com/alansantosmg/hugoblog
git add .
git commit -m "Nova postagem."
git push origin master
echo "Postagem realizada!"
