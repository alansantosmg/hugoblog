#!/bin/sh
cd ~/blog/github.com/alansantosmg
sleep 3
echo
mydate=`date "+%F"`
tar -czvf $mydate-hugoblog.tar.gz
sleep 3
cd ~/blog/github.com/alansantosmg/hugoblog
git add .
git commit -m "Nova postagem."
git push origin master
echo "Postagem realizada!"
