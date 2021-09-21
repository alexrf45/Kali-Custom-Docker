# **docker aliases**

alias e4l='docker run --rm -it fonalex45/project-repo-1:kali-custom enum4linux'

alias smbclient='docker run --rm -it fonalex45/project-repo-1:kali-custom smbclient'

alias rpcclient='docker run --rm -it fonalex45/project-repo-1:kali-custom rpcclient'

alias cme='docker run -it --rm --net=host -v data:/home fonalex45/project-repo-1:kali-custom crackmapexec'

alias responder='docker run -it --rm --net=host fonalex45/project-repo-1:kali-custom responder'

alias evil='docker run -it --rm -w /data -v data:/data fonalex45/project-repo-1:kali-custom evil-winrm'

alias smbmap='docker run -it --rm -v "$(pwd)":/data fonalex45/project-repo-1:kali-custom smbmap'
