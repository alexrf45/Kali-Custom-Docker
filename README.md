# Custom Kali Docker Image:

[Docker Hub Image](https://hub.docker.com/repository/docker/fonalex45/project-repo-1)

This is custom repo of kali docker images that save installation time and potential dependencies issues. I add to the images every so often as I discover more tools or find a better alias for a particular container. Please feel free to fork and modify to your liking. Thank you!!!

The Dockerfile is for the base image. Please visit the Docker Hub to pull down built images.There are various images depending on need.

Place the aliases in .bashrc or .zshrc, then refresh the shell: . ~/.bashrc or . ~/.zshrc 

## Tested on: Ubuntu 20.04-2, Debian 10+, Xubuntu 20.04.2 and ubuntu-budgie-20.04

## I highly recommend installing this on a lightweight Linux distro to reduce overall VM size. Less complexity = more time for fun!

##

UPDATE 2021-09-13:
 - Due to the uncompressed image size creep, 10G+ is not ideal, I am breaking up tools into separate images to provide additional flexibility.

UPDATE 2021-09-20:
 - Burpsuite has it's own image and a kali base image with a sudo user.
