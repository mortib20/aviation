FROM ubuntu:22.04 as jaero

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y sudo wget xfce4 tightvncserver expect xterm nano

# SDRReceiver
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git

WORKDIR /srv/SDRReceiver
RUN git clone https://github.com/mortib20/SDRReceiver .
RUN echo "y" | ./ci-linux-build.sh
WORKDIR /srv/SDRReceiver/bin/SDRReceiver
RUN echo "y" | ./install.sh

# JAERO
ENV VERSION=jaero_1.0.4.14-5-g1d4e515-1_linux_x86_64.tar.gz

WORKDIR /srv/jaero
RUN wget https://github.com/jontio/JAERO/releases/download/latest/${VERSION} -O - | tar -xz -C ../jaero
WORKDIR /srv/jaero/jaero
RUN echo "y" | ./install.sh

ENV USER=root
ENV PASSWORD=""
ENV GEO=1440x800
ENV SCREEN=:2

WORKDIR /srv
COPY ./password.exp ./password.exp
COPY ./start.sh ./start.sh
COPY ./jaero.sh /srv/jaero.sh
COPY ./autostart/ /root/.config/autostart/
CMD [ "./start.sh" ]
