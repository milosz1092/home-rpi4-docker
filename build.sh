#!/bin/bash

cd home-rpi4-client
npx npm-force-resolutions
npm install

cd ../home-rpi4-server
npm install
tsc --sourceMap false

cd ..
docker build -t mewash/home-rpi-4-webserver:latest .
