# Custom Kali Docker Image:

[Docker Hub Image](https://hub.docker.com/repository/docker/fonalex45/project-repo-1)

## Fully Tested on: Debian 11, Arch Linux


##

### UPDATE 2022-04-24:
 - Full Kali Image and Kali base image are availiable. Dockerfile clean up complete.  
 - I have also included a function in the aliases file for quick spin up. It mounts to your pwd on the host for easier handling of files between container and host. 

## Quick Start:

1. git clone https://github.com/alexrf45/Kali-Custom-Docker.git

2. cd Kali-Custom-Docker/

3. cd to desired image directory (Kali-Full or Kali-Base)

4. docker build -t repo:tag .

5. Copy aliases to .bashrc or .zhrc, refresh shell and enjoy!! 