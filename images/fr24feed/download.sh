#!/bin/bash

wget -c https://repo-feed.flightradar24.com/linux_binaries/fr24feed_$VERSION\_$TYPE.tgz -O - | tar -xz
mv fr24feed_$TYPE fr24feed