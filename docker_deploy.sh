#!/bin/bash

cd home-rpi4-client
npx npm-force-resolutions
npm install

cd ../home-rpi4-server
npm install
tsc --sourceMap false

cd ..
docker buildx create --name armbuilder || true
docker buildx use armbuilder
docker buildx inspect --bootstrap
docker buildx build --platform linux/arm/v7 -t mewash/home-rpi4-server --push .
