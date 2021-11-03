# **docker aliases**

alias crunch='docker run -it --rm --net=host -v ctf:/home/kali/ fonalex45/project-repo-1:kali-webapp crunch'

alias dirb='docker run -it --rm --net=host fonalex45/project-repo-1:kali-webapp dirb'

alias ffuf='docker run -it --rm --net=host fonalex45/project-repo-1:kali-webapp ffuf'

alias gobuster='docker run -it --rm  --net=host fonalex45/project-repo-1:kali-webapp gobuster'

alias burp='xhost + && docker run --name burpsuite -d -it --rm -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/root/.Xauthority -v ctf:/root --net=host fonalex45/project-repo-1:kali-webapp burpsuite'

alias sqlmap='docker run  -it --rm --net=host -v ~/.sqlmap:/root/.sqlmap  fonalex45/project-repo-1:kali-webapp sqlmap'

alias wpscan='docker run  -it --rm -v ctf:/root --net=host fonalex45/project-repo-1:kali-webapp wpscan'

alias wapiti='docker run --rm -it -v ctf:/root/.wapiti/generated_report/ --net=host fonalex45/project-repo-1:kali-webapp sudo wapiti'

alias snmpcheck='docker run --rm -it --net=host fonalex45/project-repo-1:kali-webapp snmpcheck'

alias snmpenum='docker run --rm -it --net=host fonalex45/project-repo-1:kali-webapp snmpenum'

alias snmpwalk='docker run --rm -it --net=host fonalex45/project-repo-1:kali-webapp snmpwalk'