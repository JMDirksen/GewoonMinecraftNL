# GewoonMinecraftNL

## Prerequisites

    sudo apt install -y git screen lynx openjdk-17-jre-headless

## Clone

    git clone https://github.com/JeftaDirksen/GewoonMinecraftNL.git gmnl
    cd gmnl

## Download

    lynx -dump -listonly -nonumbers https://www.minecraft.net/en-us/download/server | grep server.jar | xargs wget -O server/server.jar

## Configure

    cp server.properties.template server/server.properties
    crontab crontab.template

## Start server

    ./start.sh

## Backup

    crontab -e
        SHELL=/bin/bash
        0 * * * * rsync -rt --del --password-file=<(echo password) ~/gmnl user@host::Backup/
