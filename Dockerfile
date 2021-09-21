FROM kalilinux/kali-rolling

RUN apt-get update \
    && apt-get -y install locate wget curl man git sudo

RUN groupadd --gid 1001 kali \
    && useradd --home-dir /home/kali --create-home --uid 1001 \
      --gid 1001 --shell /bin/bash --skel /dev/null kali

RUN chown -R kali:kali /home/kali/

RUN echo 'kali  ALL=(ALL) /bin/su' >>  /etc/sudoers

WORKDIR /home/kali/

USER kali
