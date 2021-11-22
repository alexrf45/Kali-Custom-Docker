FROM kalilinux/kali-rolling

RUN apt-get update \
    && apt-get -y install wget curl aria2 man sudo

RUN groupadd --gid 1004 recon \
    && useradd --home-dir /home/recon --create-home --uid 1004 \
      --gid 1004 --shell /bin/bash --skel /dev/null recon

RUN chown -R recon:recon /home/recon/

RUN echo recon:kali | chpasswd

RUN usermod -aG sudo recon

RUN echo 'recon  ALL=(ALL) NOPASSWD:ALL' >>  /etc/sudoers.d/recon

WORKDIR /home/recon/

USER recon

RUN sudo apt install -y dnsenum dnsrecon nmap spiderfoot amass recon-ng whatweb dnsutils inetutils-tools masscan nbtscan 