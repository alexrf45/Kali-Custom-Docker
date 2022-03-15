FROM kalilinux/kali-rolling

RUN apt-get update \
    && apt-get -y install wget curl man sudo

RUN groupadd --gid 1010 kali \
    && useradd --home-dir /home/kali --create-home --uid 1010 \
      --gid 1010 --shell /bin/bash --skel /dev/null kali

RUN chown -R kali:kali /home/kali/

RUN echo kali:kali | chpasswd

RUN usermod -aG sudo kali

RUN echo 'kali  ALL=(ALL) NOPASSWD:ALL' >>  /etc/sudoers.d/kali

WORKDIR /home/kali/

USER kali

RUN sudo apt update && sudo apt install -y nmap inetutils-tools masscan httprobe dnsenum dnsutils amass

RUN sudo apt update && sudo apt install -y whatweb snmpcheck snmpenum snmp-mibs-downloader ffuf gobuster wpscan burpsuite seclists metasploit-framework firefox-esr sqlmap

RUN sudo apt install -y john exiftool djvulibre-bin crackmapexec crunch hydra

RUN sudo apt update && sudo apt install -y python3-impacket enum4linux smbclient crackmapexec smbmap ruby ruby-dev evil-winrm

RUN sudo apt update && sudo apt install -y aircrack-ng

RUN git clone https://github.com/samratashok/nishang.git
