#!/bin/bash
#install R

sudo apt-get -y install dirmngr gnupg apt-transport-https ca-certificates software-properties-common

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 # Add key
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' # Add Repo
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt install -y r-base # Install R
sudo apt-get install -y gdebi-core # Install gdebi for installing rstudio-server

pip3 install virtualenv numpy scipy scikit-learn pandas matplotlib seaborn

# Install rstudio-server
wget https://download2.rstudio.org/server/trusty/amd64/rstudio-server-1.2.1335-amd64.deb 
sudo gdebi rstudio-server-1.2.1335-amd64.deb
sudo apt-get install -y libcurl4-openssl-dev

# Install dependencies for R packages
sudo apt-get -y  install build-essential
sudo apt-get -y install libcurl4-gnutls-dev
sudo apt-get -y install libssl-dev
sudo apt-get install -y libxml2-dev # Required for roxygen2
sudo apt-get install m4
wget https://gmplib.org/download/gmp/gmp-6.2.1.tar.xz
sudo apt-get install -y xz-utils
unxz gmp-6.2.1.tar.xz
tar -xvf gmp-6.2.1.tar
cd gmp-6.2.1
./configure
sudo make install


