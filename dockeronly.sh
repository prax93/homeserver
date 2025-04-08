#! /bin/bash

if [ "$1" == "start" -o "$1" == "update" ]; then
    for i in ./compose/*.yml;
    do
        docker compose -f $i up -d && echo "$i Stack started"
    done

    cd ~/docker_config
    git clone https://github.com/prax93/Transmission-WebGui.git &&
    cd ./Transmission-WebGui &&
    docker cp . transmission:/usr/share/transmission/public_html && 
    rm -rf ~/docker_config/Transmission-WebGui/ &&
    cd ~

elif [ "$1" == "stop" ]; then
    for i in ./compose/*.yml;
    do
        docker compose -f $i down && echo "$i Stack stopped"
    done
else
    echo "Usage: $0 {start|stop}"
    exit 1
fi



