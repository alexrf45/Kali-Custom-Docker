FROM kalilinux/kali-rolling

RUN apt-get update \
    && apt-get -y install wget curl man sudo

RUN groupadd --gid 1005 kali \
    && useradd --home-dir /home/kali --create-home --uid 1005 \
      --gid 1005 --shell /bin/bash --skel /dev/null kali

RUN chown -R kali:kali /home/kali/

RUN echo kali:kali | chpasswd

RUN usermod -aG sudo kali

RUN echo 'kali  ALL=(ALL) NOPASSWD:ALL' >>  /etc/sudoers.d/kali

WORKDIR /home/kali/

USER kali

RUN sudo apt install wordlists hydra
