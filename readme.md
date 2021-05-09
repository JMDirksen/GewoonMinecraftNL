# GewoonMinecraftNL

## Prerequisites
    sudo apt install openjdk-14-jre-headless

## Clone
    git clone https://github.com/JeftaDirksen/GewoonMinecraftNL.git gm

## Download/configure
    cd ~/gm/server
    wget https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar
    cp server.properties.template server.properties

## Start server
    cd ~/gm
    ./start.sh

## Auto start
    crontab -e
      @reboot ~/gm/start.sh
