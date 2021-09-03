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


UPDATE 2021-08-22:
- Small update: added dnsutils for dig and nslookup. 
  - This is more of a preference than a necessity. These are very light utilities and normally better suited on the host machine.
- Just an observation: The kali image can run the majority of utilities such as smbclient or rpcclient. 
- Added some custom aliases for daily docker usage. 

UPDATE 2021-08-28:
- Added two aliases for nmap:
  - nmap1: -sC -sV -Pn -p- 
  - nmapdiscover: --script discovery -p-
  

UPDATE 2021-08-29:
- I'm having issues getting the container to read files from the host so I recommend using the kali-shell for any tools that utilize user lists and custom wordlists generated on     the host. I will find a fix hopefully soon. My goal is to save on keystrokes and streamline ops.

UPDATE 2021-08-30:
- Boom so heads up for folks that aren't super proficient with Docker. Ensure when you set the volume that you know where the volume is placed on your host. This will allow you to place files there needed by containers such as crackmapexec that will read from that volume for username lists and wordlists. I adjusted the aliases accordingly. Happy Hacking!
UPDATE 2021-09-04: 
- Added rlwrap to the image for use with netcat 
