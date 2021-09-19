FROM kalilinux/kali-rolling

RUN apt-get update && apt-get -y install locales

RUN apt-get update \
    && apt-get -y install man sudo locate build-essential wget curl



RUN useradd -m burp
RUN echo "burp ALL=NOPASSWD: ALL" > /etc/sudoers.d/burp
RUN chsh -s /usr/bin/bash burp

USER burp
RUN mkdir -p /home/burp/bin

WORKDIR /home/burp/bin

### Install Burpsuite ###
RUN wget -O ./burp.jar 'https://portswigger.net/DownloadUpdate.ashx?Product=Free' \
    && chmod +x ./burp.jar
RUN echo "#! /bin/bash \n\
java -jar /home/burp/bin/burp.jar > /dev/null 2>&1 & \n" > burpsuite \
    && chmod +x burpsuite

RUN sudo apt-get clean
WORKDIR /home/burp
CMD ["whoami"]
