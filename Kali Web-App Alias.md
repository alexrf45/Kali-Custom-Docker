# **docker aliases**

alias crunch='docker run -it --rm -v data:/data fonalex45/project-repo-1:kali-webapp crunch'

alias dirb='docker run -it --rm --net=host fonalex45/project-repo-1:kali-webapp dirb'

alias ffuf='docker run -it --rm --net=host fonalex45/project-repo-1:kali-webapp ffuf'

alias gobuster='docker run -it --rm  --net=host fonalex45/project-repo-1:kali-webapp gobuster'

alias burp='xhost + && docker run --name burpsuite -d -it --rm -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/root/.Xauthority -v ctf:/root --net=host fonalex45/project-repo-1:kali-webapp burpsuite'

alias sqlmap='docker run  -it --rm --net=host -w /data -v ~/.sqlmap:/root/.sqlmap -v $(pwd):/data fonalex45/project-repo-1:kali-webapp sqlmap'

alias wpscan='docker run  -it --rm -v ctf:/root --net=host fonalex45/project-repo-1:kali-webapp wpscan'

alias wapiti='docker run  --rm -it -v ctf:/home/.wapiti/generated_report/ --net=host fonalex45/project-repo-1:kali-webapp wapiti'
