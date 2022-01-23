FROM kalilinux/kali-rolling

RUN apt-get update \
    && apt-get -y install wget curl man sudo

RUN groupadd --gid 1337 pwn \
    && useradd --home-dir /home/pwn --create-home --uid 1337 \
      --gid 1337 --shell /bin/bash --skel /dev/null pwn

RUN chown -R pwn:pwn /home/pwn/

RUN echo pwn:kali | chpasswd

RUN usermod -aG sudo pwn

RUN echo 'pwn  ALL=(ALL) NOPASSWD:ALL' >>  /etc/sudoers.d/pwn

WORKDIR /home/pwn/

USER pwn

RUN sudo apt update && sudo apt install -y hydra

RUN sudo apt install -y john

RUN sudo apt install -y crackmapexec

RUN sudo apt install -y crunch

RUN sudo apt install -y wordlists
