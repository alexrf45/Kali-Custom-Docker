# Custom Kali Docker Image:

[Docker Hub Image](https://hub.docker.com/repository/docker/fonalex45/project-repo-1)

This is custom repo of kali docker images that save installation time and potential dependencies issues. I add to the images every so often as I discover more tools or find a better alias for a particular container. Please feel free to fork and modify to your liking.

## Tested on: Ubuntu 20.04-2, Debian 10+, Xubuntu 20.04.2 and ubuntu-budgie-20.04

## I highly recommend installing this on a lightweight Linux distro to reduce overall VM size. Less complexity = more time for fun!

##

### UPDATE 2021-11-04:
 - Dockerfiles for each custom image are available. 


## Quick Start:

1. git clone https://github.com/alexrf45/Kali-Custom-Docker.git

2. cd Kali-Custom-Docker/

3. cd to desired image directory 

4. docker build -t repo:tag .

5. Copy aliases to .bashrc or .zhrc, refresh shell and enjoy!! 