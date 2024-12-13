#!/bin/bash
  #  sudo apt-get update -y
   # sudo apt-get install -y gdebi-core
    #wget https://download2.rstudio.org/installer/rstudio-connect.deb
    #sudo gdebi -n rstudio-connect.deb
    #sudo systemctl start rstudio-connect

    #!/bin/bash
# ******************************************
# Program: R-Studio Installation Script
# Developer: Pratik Patil
# Date: 16-04-2015
# Last Updated: 16-04-2015
# ********************************************

apt update -y
apt install -y nginx
systemctl start nginx
systemctl enable nginx



if [ "`lsb_release -is`" == "Ubuntu" ] || [ "`lsb_release -is`" == "Debian" ]
then
    sudo apt-get -y install r-base gdebi-core libapparmor1;
    sudo wget http://download2.rstudio.org/rstudio-server-0.98.1103-amd64.deb;
    sudo gdebi rstudio-server-0.98.1103-amd64.deb;

elif [ "`lsb_release -is`" == "CentOS" ] || [ "`lsb_release -is`" == "RedHat" ]
then
    sudo yum -y install R openssl098e;
    sudo wget http://download2.rstudio.org/rstudio-server-0.98.1103-x86_64.rpm;
    sudo yum -y install --nogpgcheck rstudio-server-0.98.1103-x86_64.rpm;
else
    echo "Unsupported Operating System";
fi

sudo rm -f rstudio-server-*;
sudo rstudio-server verify-installation;
