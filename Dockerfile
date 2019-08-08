# How to run: sudo docker run -p 25588:80 -p 25589:1080 -v /dev/shm:/dev/shm $ThisImage
#   80 is http VNC port, 1080 is socks5 proxy port.

FROM dorowu/ubuntu-desktop-lxde-vnc

MAINTAINER Recolic Keghart <root@recolic.net>

COPY sources.list /etc/apt/sources.list

RUN apt update && add-apt-repository ppa:mark-pcnetspec/gksu && apt update
RUN apt update ; apt install -y libssl1.0.0 wget qt4-default libqtwebkit-dev gksu # shadowsocks

ARG url_alilang=http://1.ali.recolic.org:25580/alilang.deb
ARG url_delegate=http://1.ali.recolic.org:25580/linux2.6-dg9_9_13.tar.gz

WORKDIR /
RUN wget "${url_alilang}" -O alilang.deb && wget "${url_delegate}" -O linux2.6-dg9_9_13.tar.gz && \
    apt install -y ./alilang.deb && rm alilang.deb && \
    tar xvzf linux2.6-dg9_9_13.tar.gz && cd dg9_9_13/DGROOT

COPY entry_r.sh /entry_r.sh
RUN chmod +x entry_r.sh

ENTRYPOINT ["/entry_r.sh"]

