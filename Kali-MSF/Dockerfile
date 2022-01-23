FROM kalilinux/kali-rolling

RUN apt-get update \
    && apt-get -y install wget curl sudo

RUN groupadd --gid 1007 msf \
    && useradd --home-dir /home/msf --create-home --uid 1007 \
      --gid 1007 --shell /bin/bash --skel /dev/null msf

RUN chown -R msf:msf /home/msf/

RUN echo msf:kali | chpasswd

RUN usermod -aG sudo msf

RUN echo 'msf ALL=(ALL) NOPASSWD:ALL' >>  /etc/sudoers.d/msf

WORKDIR /home/msf/

USER msf

RUN sudo apt update && sudo apt install -y metasploit-framework
