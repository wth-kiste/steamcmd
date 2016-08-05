FROM ubuntu:14.04

MAINTAINER wth-kiste

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y curl lib32gcc1

RUN useradd -m steam
USER steam

RUN cd /home/steam && curl -s http://media.steampowered.com/installer/steamcmd_linux.tar.gz | tar -vxz

WORKDIR /home/steam

ENTRYPOINT ["./steamcmd.sh"]
