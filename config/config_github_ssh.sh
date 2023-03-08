#!/bin/bash
# script to configure my github ssh keys

# create a file called infos.sh in the root of this repository with 2 variables: KEY_NAME and EMAIL
source ../infos.sh

#Create ssh keys with the command below in the folder ~/.shh
cd ~/.ssh
ssh-keygen -f ~/.ssh/$KEY_NAME -o -t rsa -C "$EMAIL"

echo -e '\n\nCopy the code below and add it to github\n\n'

cat ~/.ssh/$KEY_NAME.pub