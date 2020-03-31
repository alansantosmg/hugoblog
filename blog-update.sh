#!/bin/sh
cd ~/blog/github.com/alansantosmg
sleep 3
echo
mydate=`date "+%F-%H%M%S"`
tar -czvf ./blogBkp/$mydate-hugoblog.tar.gz ./hugoblog
echo
sleep 3
echo
cd hugoblog
git add .
git commit -m "Nova postagem."
git push origin master
sleep 3
echo "Postagem realizada!"
