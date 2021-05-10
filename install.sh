#!/bin/bash

echo '***********************************************'
echo '         D3vloped By Simarpre3t Singh          '
echo '***********************************************'


bashrcthing(){
    echo "alias todo='python3 /home/Do-Some-Task/Todo.py'" >> ~/.bashrc
    source ~/.bashrc
}


installationFunc(){
    sudo git clone https://github.com/IAmSimarpreetSingh/Do-Some-Task.git
    bashrcthing
    echo "  "
    echo "**********************************************"
    echo "*         Installation  Completed            *"
    echo "*             USAGE : todo                   *"
    echo "*************( THANK YOU )********************"
    echo "**********************************************"
    exit 1
}


if command python3 --version > /dev/null && pip3 --version > /dev/null && git --version > /dev/null; then
    python3 -m pip install colorama
    cd /home/
    installationFunc

else
    sudo apt-get install python3
    sudo apt-get install python3-pip
    sudo apt-get install git

    installationFunc
fi

