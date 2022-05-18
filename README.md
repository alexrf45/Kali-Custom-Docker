# Custom Kali Docker Image:

[Docker Hub Image](https://hub.docker.com/repository/docker/fonalex45/project-repo-1)

## Fully Tested on: Debian 11, Arch Linux 5.17.8-zen

### UPDATE 2022-04-24:
 - Full Kali Image and Kali base image are availiable. Dockerfile clean up complete.  
 - I have also included a function in the aliases file for quick spin up. It mounts to your pwd on the host for easier handling of files between container and host. 

### UPDATE 2022-05-18:
- Added oh-my-zsh and useful aliases, run export $URL=targeturl before running ffuf-quick:

>alias http='sudo python3 -m http.server 80'
alias reload='. ~/.zshrc'
alias update='sudo apt-get update'
alias t='tmux -f ~/.tmux.conf'
alias zcopy='cp .zshrc .zlogin && cp .zlogin .zprofile'
alias i='sudo apt-get install'
alias public='curl ifconfig.me'
alias speedtest='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -'
alias nmap-quick='nmap -sC -sV -p-'
alias ffuf-quick='ffuf -u $URL -w /usr/share/seclists/Discovery/Web-Content/common.txt' -o results.txt -mc 200 -fs 0'

## Quick Start:

1. git clone https://github.com/alexrf45/Kali-Custom-Docker.git

2. cd Kali-Custom-Docker/

3. cd to desired image directory (Kali-Full or Kali-Base)

4. docker build -t kali-dock:kali-full . or docker build -t kali-dock:kali-base

5. docker run --rm -it --net=host kali-dock:kali-full or docker build -t kali-dock:kali-base

### Kali-Full Docker Function for easy disposable access:

 function kali() {
    dirname=${PWD##*/}
    docker run --rm -it --net=host --entrypoint=/bin/zsh -v `pwd`:/${dirname} -w /${dirname} kali-dock:kali-full
}
