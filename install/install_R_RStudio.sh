#!/bin/bash

echo "Downloading R"
sudo apt-get install r-base r-base-dev

echo "add to repository"
sudo echo deb http://cran.rstudio.com/bin/linux/ubuntu xenial/ | sudo tee -a /etc/apt/sources.list

echo "update"
sudo apt-get update

echo "Install R"
sudo apt-get install r-base r-base-dev

echo "Download and Install RStudio"

# The following line may change depending on the OS version, look at https://posit.co/download/rstudio-desktop/#download for the newer version
wget -O ./rstudio.deb  https://download1.rstudio.org/electron/jammy/amd64/rstudio-2023.06.2-561-amd64.deb
sudo apt install ./rstudio.deb
rm rstudio.deb

echo -e "\nDone!"
