FROM mhart/alpine-node:8
RUN mkdir -p /root/data
WORKDIR /root/data
COPY /home-rpi4-client/dist /home-rpi4-client/dist
COPY /home-rpi4-server/bin /home-rpi4-server/bin