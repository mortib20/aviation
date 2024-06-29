#!/bin/bash

wget https://www.sdrplay.com/software/SDRplay_RSP_API-Linux-$FULL_VERSION$MINOR_VERSION\.run
chmod +x SDRplay_RSP_API-Linux-$FULL_VERSION$MINOR_VERSION\.run
sh SDRplay_RSP_API-Linux-$FULL_VERSION$MINOR_VERSION\.run --tar xvf

mv ./amd64/sdrplay_apiService /usr/bin
mv ./amd64/libsdrplay_api.so.$FULL_VERSION /usr/local/lib
ln -s /usr/local/lib/libsdrplay_api.so.$FULL_VERSION /usr/local/lib/libsdrplay_api.so.2
ln -s /usr/local/lib/libsdrplay_api.so.2 /usr/local/lib/libsdrplay_api.so

mv inc/* /usr/include/
ldconfig
