FROM kalilinux/kali-rolling:latest

RUN apt-get update \
    && apt-get install -y \
    wget \
    curl \
    man \
    sudo \
    git

RUN groupadd --gid 1001 kali \
    && useradd --home-dir /home/kali --create-home --uid 1001 \
      --gid 1001 --shell /bin/bash --skel /dev/null kali

RUN chown -R kali:kali /home/kali/

RUN echo kali:kali | chpasswd

RUN usermod -aG sudo kali

RUN echo 'kali  ALL=(ALL) NOPASSWD:ALL' >>  /etc/sudoers.d/kali

WORKDIR /home/kali/

USER kali

RUN sudo apt-get update && sudo apt-get install -y \
	netcat-traditional \
	nmap \
	inetutils-tools \ 
	masscan \ 
	httprobe \ 
	dnsenum  \ 
	dnsutils \  
	amass \
	whatweb \
	snmpcheck \
	snmpenum \
	snmp-mibs-downloader \
	ffuf \
	gobuster \
	wpscan \
	burpsuite \
	seclists \
	metasploit-framework \
	firefox-esr \
	sqlmap \
	john \
	exiftool \
	djvulibre-bin \
	crackmapexec \
	crunch \
	hydra \
	wordlists \
	python3-impacket \ 
	enum4linux \
	smbclient \
	crackmapexec \
	smbmap \
	ruby \
	ruby-dev \ 
	evil-winrm


RUN git clone https://github.com/samratashok/nishang.git
