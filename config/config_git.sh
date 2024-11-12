#!/bin/bash
# script to configure my Git

source ../infos.sh

git config --global user.name "$GITHUB_USER"
git config --global user.email "$EMAIL"