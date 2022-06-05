![Github](https://www.docker.com/wp-content/uploads/2022/03/horizontal-logo-monochromatic-white.png?raw=true)

# Custom Kali Docker Image:

[Docker Hub Image](https://hub.docker.com/repository/docker/fonalex45/project-repo-1)

## Fully Tested on: Debian 11, Arch Linux 5.17.8-zen

### UPDATE 2022-04-24:
 - Full Kali Image and Kali base image are availiable. Dockerfile clean up complete.  
 - I have also included a function in the aliases file for quick spin up. It mounts to your pwd on the host for easier handling of files between container and host. 

### UPDATE 2022-06-05:
-  Table format for reference. You can customize based on OS (Arch vs. Debian, different tools)
-  Added oh-my-zsh and useful aliases, run export $URL=targeturl before running ffuf-quick:

| alias      | command                                                                                              |
|------------|------------------------------------------------------------------------------------------------------|
| http       | 'sudo python3 -m http.server 80'                                                                     |
| reload     | '. ~/.zshrc'                                                                                         |
| update     | 'sudo apt-get update'                                                                                |
| t          | 'tmux -f ~/.tmux.conf'                                                                               |
| zcopy      | 'cp .zshrc .zlogin && cp .zlogin .zprofile'                                                          |
| i          | 'sudo apt-get install'                                                                               |
| public     | 'curl ifconfig.me'                                                                                   |
| speedtest  | 'curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py \| python3 -'     |
| nmap-quick | 'nmap -sC -sV -p-'                                                                                   |
| ffuf-quick | 'ffuf -u $URL -w /usr/share/seclists/Discovery/Web-Content/common.txt' -o results.txt -mc 200 -fs 0' |

## Quick Start:

```bash
$ git clone https://github.com/alexrf45/Kali-Custom-Docker.git

$ cd Kali-Custom-Docker/

## cd to desired image

$ cd Kali-Full/

$ cd Kail-Base/

## full image
$ docker build -t kali-dock:kali-full . 

## base image
$ docker build -t kali-dock:kali-base .

$ docker run --rm -it --net=host kali-dock:kali-full

```
## Kali-Full Docker Function for easy disposable access:

```

function kali() {
    dirname=${PWD##*/}
    docker run --rm -it --net=host --entrypoint=/bin/zsh -v `pwd`:/${dirname} -w /${dirname} kali-dock:kali-full
}

```
