#!/bin/bash

docker build -t libacars:latest images/libacars
docker build -t fr24feed:latest images/fr24feed
docker build -t mlat-client:latest images/mlat-client