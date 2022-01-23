FROM kalilinux/kali-rolling

RUN apt-get update \
    && apt-get -y install wget curl man git sudo

RUN groupadd --gid 1005 kali-ad \
    && useradd --home-dir /home/kali-ad --create-home --uid 1005 \
      --gid 1005 --shell /bin/bash --skel /dev/null kali-ad

RUN chown -R kali-ad:kali-ad /home/kali-ad/

RUN echo kali-ad:kali | chpasswd

RUN usermod -aG sudo kali-ad

RUN echo 'kali-ad  ALL=(ALL) NOPASSWD:ALL' >>  /etc/sudoers.d/kali-ad

WORKDIR /home/kali-ad/

USER kali-ad

RUN sudo apt update && sudo apt install -y enum4linux smbclient crackmapexec smbmap

RUN sudo apt install ruby ruby-dev

RUN sudo apt install evil-winrm

RUN git clone https://github.com/samratashok/nishang.git
