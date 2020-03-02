FROM arm32v7/node:10-alpine
RUN mkdir -p /root/data
WORKDIR /
COPY /home-rpi4-client/dist/ /root/data/home-rpi4-client/dist/
COPY /home-rpi4-server/bin/ /root/data/home-rpi4-server/bin/
COPY /home-rpi4-server/config/ /root/data/home-rpi4-server/config/
COPY /home-rpi4-server/ssl* /root/data/home-rpi4-server/
COPY /home-rpi4-server/node_modules/ /root/data/home-rpi4-server/node_modules
WORKDIR /root/data/home-rpi4-server/