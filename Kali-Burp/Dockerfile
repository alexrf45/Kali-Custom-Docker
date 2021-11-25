FROM kalilinux/kali-rolling

RUN apt-get update \
    && apt-get -y install wget curl man sudo

RUN groupadd --gid 1010 burp \
    && useradd --home-dir /home/burp --create-home --uid 1010 \
      --gid 1010 --shell /bin/bash --skel /dev/null burp

RUN chown -R burp:burp /home/burp/

RUN echo burp:kali | chpasswd

RUN usermod -aG sudo burp

RUN echo 'burp  ALL=(ALL) NOPASSWD:ALL' >>  /etc/sudoers.d/burp

WORKDIR /home/burp/

USER burp

RUN sudo apt update && sudo apt install -y burpsuite seclists
