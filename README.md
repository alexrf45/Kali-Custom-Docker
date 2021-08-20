# Custom Kali Docker Image:

[Docker Hub Image](https://hub.docker.com/repository/docker/fonalex45/project-repo-1)

This is custom kali docker image that saves on installation time of tools and potential dependencies issues. I add to the image every so often as I discover more tools or find a better alias for a particular container. Please feel free to fork and modify to your liking. Thank you!!! 

## Tested on: Ubuntu 20.04-2, Debian 10+, Xubuntu 20.04.2 and ubuntu-budgie-20.04

## I highly recommend installing this on a lightweight Linux distro to reduce overall VM size. Less complexity = more time for fun! 

## 

UPDATE 2021-08-20: 

- Fixed issues with wordlists. Added Seclists to the image to simplify use of wordlists. The last commit forced the user to navigate to the wordlist directory on the host to enable the container to read the specified wordlists. The adding of wordlists to the container should allow for normal syntax with absolute path to wordlist (/usr/share/seclists/..)
- Updated volume for kali-shell with $USER
- I have found it is easier to use the docker cp command to pull artifacts from the running container. 
- Please reference https://www.tecmint.com/set-permanent-dns-nameservers-in-ubuntu-debian/ for how to fix dns in unbuntu to resolve subdomains from /etc/hosts. 
