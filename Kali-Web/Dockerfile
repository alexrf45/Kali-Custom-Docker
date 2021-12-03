FROM kalilinux/kali-rolling

RUN apt-get update \
    && apt-get -y install wget curl man sudo

RUN groupadd --gid 1005 kaliweb \
    && useradd --home-dir /home/kaliweb --create-home --uid 1005 \
      --gid 1005 --shell /bin/bash --skel /dev/null kaliweb

RUN chown -R kaliweb:kaliweb /home/kaliweb/

RUN echo kaliweb:kali | chpasswd

RUN usermod -aG sudo kaliweb

RUN echo 'kaliweb  ALL=(ALL) NOPASSWD:ALL' >>  /etc/sudoers.d/kaliweb

WORKDIR /home/kaliweb/

USER kaliweb

RUN sudo apt update && sudo apt install -y whatweb crunch ffuf gobuster snmpenum sqlmap wapiti wpscan seclists
