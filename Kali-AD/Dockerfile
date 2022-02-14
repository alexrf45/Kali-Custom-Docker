FROM kalilinux/kali-rolling

RUN apt-get update \
    && apt-get -y install wget curl man git sudo

RUN groupadd --gid 1004 kali-ad \
    && useradd --home-dir /home/kali-ad --create-home --uid 1004 \
      --gid 1004 --shell /bin/bash --skel /dev/null kali-ad

RUN chown -R kali-ad:kali-ad /home/kali-ad/

RUN echo kali-ad:kali | chpasswd

RUN usermod -aG sudo kali-ad

RUN echo 'kali-ad  ALL=(ALL) NOPASSWD:ALL' >>  /etc/sudoers.d/kali-ad

WORKDIR /home/kali-ad/

USER kali-ad

RUN sudo apt update && sudo apt install -y python3-impacket enum4linux smbclient crackmapexec smbmap ruby ruby-dev evil-winrm

RUN git clone https://github.com/samratashok/nishang.git
