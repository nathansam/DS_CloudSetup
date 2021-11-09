#!/bin/bash

# Add repos
sudo apt-get -y install dirmngr gnupg apt-transport-https ca-certificates software-properties-common
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 # Add key
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/' # Add Repo for R
sudo add-apt-repository 'deb http://security.ubuntu.com/ubuntu xenial-security main' # Needed for libSSL1.0.0
sudo apt-get -y update
sudo apt-get -y upgrade

# Python packages
pip3 install virtualenv numpy scipy scikit-learn pandas matplotlib seaborn

# Install R 
sudo apt install -y r-base 
## Dependencies for R packages
sudo apt-get -y  install build-essential
sudo apt-get -y install libcurl4-gnutls-dev
sudo apt-get -y install libv8-dev
sudo apt-get -y install libssl-dev
sudo apt-get -y install libcairo2-dev
sudo apt-get -y install jags
sudo apt-get -y install libfontconfig1-dev
sudo apt-get install -y libxml2-dev # Required for roxygen2
sudo apt-get install m4

# Install rstudio-server
wget https://download2.rstudio.org/server/trusty/amd64/rstudio-server-1.2.1335-amd64.deb 
sudo gdebi rstudio-server-1.2.1335-amd64.deb
sudo apt-get install -y libcurl4-openssl-dev
sudo apt-get install -y libssl1.0.0 
sudo apt-get install -y gdebi-core

wget https://gmplib.org/download/gmp/gmp-6.2.1.tar.xz
sudo apt-get install -y xz-utils
unxz gmp-6.2.1.tar.xz
tar -xvf gmp-6.2.1.tar
cd gmp-6.2.1
./configure
sudo make install


