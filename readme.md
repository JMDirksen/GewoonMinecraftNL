# GewoonMinecraftNL

## Prerequisites

    sudo apt install -y git screen openjdk-17-jre-headless

## Clone

    git clone https://github.com/JeftaDirksen/GewoonMinecraftNL.git gmnl

## Download/configure

Find download url on https://www.minecraft.net/en-us/download/server

    wget -O gmnl/server/server.jar https://launcher.mojang.com/v1/objects/1b557e7b033b583cd9f66746b7a9ab1ec1673ced/server.jar
    cp server.properties.template server.properties
    crontab gmnl/crontab.txt

## Start server

    ./gmnl/start.sh
