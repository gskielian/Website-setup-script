#!/bin/bash

#figlet "Github Setup Script"'!'
#figlet -f slant "by gskielian"

echo "Github Setup Script"
echo "by gskielian"
echo ""

while [ 1 ] ; do

  echo -e "what is the username?"
  read username

  echo -e "github repo is $username.github.io -- is this correct? (Y/n)"
  read response

  if [ $response = "Y" ] ; then
    git clone https://github.com/$username/$username.github.io.git
    cd $username.github.io
    cp -r ../business-casual/* ./
    git add *
    git commit -a -m "website starting point loaded"
    git push origin master
    Say "Website shall be ready in 10 Minutes"
    open https://github.com/$username/$username.github.io.git
    nohup bash -c " sleep 600 && && open http://$username.github.io"&
  else
    echo -e "re-enter username: \n"
  fi


done

