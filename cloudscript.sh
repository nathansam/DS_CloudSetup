#!/bin/bash
#install R
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 # Add key
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' # Add Repo
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt install -y r-base #Install R
sudo apt-get install -y gdebi-core #install gdebi for installing rstudio-server


pip3 install virtualenv numpy scipy scikit-learn


#Install rstudio-server
wget https://download2.rstudio.org/server/trusty/amd64/rstudio-server-1.2.1335-amd64.deb 
sudo gdebi rstudio-server-1.2.1335-amd64.deb
sudo apt-get install -y libcurl4-openssl-dev

#Install dependencies for R packages
wget https://gmplib.org/download/gmp/gmp-6.1.2.tar.xz
sudo apt-get install -y xz-utils
unxz gmp-6.1.2.tar.xz
tar -xvf gmp-6.1.2.tar
cd gmp-6.1.2
./configure
make install

sudo useradd nathan
cd
cd DS_CloudSetup

sudo -u nathan Rscript packages.R

echo restarting 
sudo reboot

