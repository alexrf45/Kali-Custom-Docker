FROM kalilinux/kali-rolling

RUN apt-get update \
    && apt-get -y install locate wget curl man git zsh

RUN groupadd --gid 1001 kali \
    && useradd --home-dir /home/kali --create-home --uid 1001 \
      --gid 1001 --shell /bin/bash --skel /dev/null kali

USER kali
RUN mkdir -p /home/kali/data

WORKDIR /home/kali/data
