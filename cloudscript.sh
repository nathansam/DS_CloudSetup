#!/bin/bash
#install R
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 # Add key
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' # Add Repo
sudo apt-get update
sudo apt-get upgrade
sudo apt install r-base #Install R
sudo apt-get install gdebi-core #install gdebi for installing rstudio-server

#Install rstudio-server
wget https://download2.rstudio.org/server/trusty/amd64/rstudio-server-1.2.1335-amd64.deb 
sudo gdebi rstudio-server-1.2.1335-amd64.deb
sudo apt-get install libssl-dev

#Install dependencies for R packages
wget https://gmplib.org/download/gmp/gmp-6.1.2.tar.xz
sudo apt-get install xz-utils
unxz gmp-6.1.2.tar.xz
tar -xvf gmp-6.1.2.tar
cd gmp-6.1.2
./configure
make install
R
install.packages("devtools")
devtools::install_github("nathansam/CircadianTools")
q()
