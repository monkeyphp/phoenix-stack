#!/bin/bash

# Install the stack for Phoenix development
echo -e '\E[1;33m'"\033[1m Installing Phoenix Development Stack \033[0m"

############################################################################### 
# check the currently running user                                            #
###############################################################################
echo -e '\E[1;33m'"\033[1m Checking script user... \033[0m"
if [[ $EUID -ne 0 ]];
    then
        echo -e '\E[1;31m'"\033[1m You must be root to run this script! \033[0m"
        exit $?
fi
echo -e '\E[1;36m'"\033[1m Hello, $USER, how are you today? \033[0m"

############################################################################### 
# Update YUM                                                                  #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to update Yum! \033[0m"
yum -q -y update
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not update Yum! \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Updated Yum! \033[0m"

############################################################################### 
# Install epel-release                                                        #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install epel-release \033[0m"
yum -q -y install epel-release
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install epel-release \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed epel-release \033[0m"

############################################################################### 
# Install gcc                                                        #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install gcc \033[0m"
yum -q -y install gcc
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install gcc \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed gcc \033[0m"

############################################################################### 
# Install gcc-c++                                                        #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install gcc-c++ \033[0m"
yum -q -y install gcc-c++
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install gcc-c++ \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed gcc-c++ \033[0m"

############################################################################### 
# Install glibc-devel                                                        #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install glibc-devel \033[0m"
yum -q -y install glibc-devel
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install glibc-devel \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed glibc-devel \033[0m"

############################################################################### 
# Install make                                                        #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install make \033[0m"
yum -q -y install make
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install make \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed make \033[0m"

###############################################################################
# Install ncurses-devel                                                       #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install ncurses-devel \033[0m"
yum -q -y install ncurses-devel
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install ncurses-devel \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed ncurses-devel \033[0m"

###############################################################################
# Install openssl-devel                                                       #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install openssl-devel \033[0m"
yum -q -y install openssl-devel
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install openssl-devel \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed openssl-devel \033[0m"

###############################################################################
# Install autoconf                                                            #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install autoconf \033[0m"
yum -q -y install autoconf
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install autoconf \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed autoconf \033[0m"

###############################################################################
# Install java-1.8.0-openjdk-devel                                            #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install java-1.8.0-openjdk-devel \033[0m"
yum -q -y install java-1.8.0-openjdk-devel
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install java-1.8.0-openjdk-devel \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed java-1.8.0-openjdk-devel \033[0m"

###############################################################################
# Install git                                                                 #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install git \033[0m"
yum -q -y install git
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install git \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed git \033[0m"

###############################################################################
# Install wget                                                                #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install wget \033[0m"
yum -q -y install wget
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install wget \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed wget \033[0m"

###############################################################################
# Install wxBase                                                                #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install wxBase \033[0m"
yum -q -y install wxBase
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install wxBase \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed wxBase \033[0m"

###############################################################################
# Download erlang-solutions RPM                                                             #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to download erlang-solutions-1.0-1.noarch.rpm from erlang-solutionsorg \033[0m"
wget -q https://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm
if [ $? -ne 0 ]; 
    then
        echo -e '\E[0;41m'"\033[1m Could not download  \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Downloaded \033[0m"

echo -e '\E[0;35m'"\033[1m Attempting to install erlang-solutions-1.0-1.noarch.rpm \033[0m"
rpm -Uvh erlang-solutions-1.0-1.noarch.rpm
if [ $? -ne 0 ]; 
    then
        echo -e '\E[0;41m'"\033[1m Could not install  \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed \033[0m"

###############################################################################
# Install erlang                                                              #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install erlang \033[0m"
yum -y -q install erlang
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install erlang \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed erlang \033[0m"
 
###############################################################################
# Clone Elixir                                                                #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to clone elixir \033[0m"
git clone https://github.com/elixir-lang/elixir.git
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not clone elixir \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Cloned elixir \033[0m"

############################################################################### 
# Change to the elixir/ directory                                             #
############################################################################### 
echo -e '\E[0;35m'"\033[1m Attempting to change to the elixir/ directory \033[0m"
cd elixir/
if [ $? -ne 0 ]; 
    then
        echo -e '\E[0;41m'"\033[1m Could not change to the elixir/ directory \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Changed to the elixir/ directory \033[0m"

############################################################################### 
# Running make                                                                #
############################################################################### 
echo -e '\E[0;35m'"\033[1m Running make \033[0m"
make clean test

############################################################################### 
# Symlink binaries                                                            #     #
############################################################################### 
echo -e '\E[0;35m'"\033[1m Symlinking binaries \033[0m"
ln -s /home/vagrant/elixir/bin/elixir /usr/bin/elixir
ln -s /home/vagrant/elixir/bin/elixirc /usr/bin/elixirc
ln -s /home/vagrant/elixir/bin/iex /usr/bin/iex
ln -s /home/vagrant/elixir/bin/mix /usr/bin/mix

############################################################################### 
# Install node setup                                                          #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install node setup \033[0m"
curl -sL https://rpm.nodesource.com/setup_6.x | sudo -E bash -
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install node setup \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed node setup \033[0m"

############################################################################### 
# Install nodejs                                                              #
###############################################################################
echo -e '\E[0;35m'"\033[1m Attempting to install nodejs \033[0m"
yum -q -y install nodejs
if [ $? -ne 0 ];
    then 
        echo -e '\E[0;41m'"\033[1m Could not install nodejs \033[0m"
        exit $?
fi
echo -e '\E[1;32m'"\033[1m Installed nodejs \033[0m"
