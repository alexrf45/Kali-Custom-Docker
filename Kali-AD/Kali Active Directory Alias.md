# **docker aliases**

alias e4l='docker run --rm -it --net=host fonalex45/project-repo-1:kali-AD enum4linux'

alias smbclient='docker run --rm -it --net=host fonalex45/project-repo-1:kali-AD smbclient'

alias rpcclient='docker run --rm -it --net=host fonalex45/project-repo-1:kali-AD rpcclient'

alias cme='docker run -it --rm --net=host -v data:/home fonalex45/project-repo-1:kali-AD crackmapexec'

alias responder='docker run -it --rm --net=host fonalex45/project-repo-1:kali-AD responder'

alias smbmap='docker run -it --rm --net=host -v "$(pwd)":/data fonalex45/project-repo-1:kali-AD smbmap'
