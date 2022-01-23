FROM kalilinux/kali-rolling

RUN apt-get update \
    && apt-get -y install wget curl man sudo

RUN groupadd --gid 1111 kaliwifi \
    && useradd --home-dir /home/kaliwifi --create-home --uid 1111 \
      --gid 1111 --shell /bin/bash --skel /dev/null kaliwifi

RUN chown -R kaliwifi:kaliwifi /home/kaliwifi/

RUN echo kaliwifi:kali | chpasswd

RUN usermod -aG sudo kaliwifi

RUN echo 'kaliwifi  ALL=(ALL) NOPASSWD:ALL' >>  /etc/sudoers.d/kaliwifi

WORKDIR /home/kaliwifi/

USER kaliwifi

RUN sudo apt update && sudo apt install -y aircrack-ng

RUN sudo apt update && sudo apt install -y wordlists
