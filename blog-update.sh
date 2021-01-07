#!/bin/bash
cd $HOME/src
sleep 3
echo "IF"

if [ -d "hugoBlogBkp" ]; then 
    echo "Criando diretório..."
    sleep 3
    mkdir hugoBlogBkp
fi 

echo "fim IF"
echo
mydate=`date "+%F-%H%M%S"`
tar -czvf $HOME/src/hugoBlogBkp/$mydate-hugoblog.tar.gz $HOME/src/github.com/alansantosmg/hugoblog
echo
sleep 3
echo
cd $HOME/src/github.com/alansantosmg/hugoblog
git add .
git commit -m "Nova postagem."
git push origin master
sleep 3
echo "Postagem realizada!"
