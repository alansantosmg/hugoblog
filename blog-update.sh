#!/bin/sh
cd $HOME
sleep 3

if [ ! -d "hugoBlogBkp" ]; then 
    echo "Criando diretório:  $HOME/hugoBlogBkp"
    sleep 3
    mkdir hugoBlogBkp
fi 

echo "Iniciando backup!"
sleep 3
mydate=`date "+%F-%H%M%S"`
tar -czvf $HOME/hugoBlogBkp/$mydate-hugoblog.tar.gz $HOME/github.com/alansantosmg/hugoblog
echo
echo "Backup concluido. Iniciando atualização do blog."
sleep 3
echo
cd $HOME/github.com/alansantosmg/hugoblog
git add .
git commit -m "Nova atualização."
git push origin master
sleep 3
echo "Atualização realizada!"
