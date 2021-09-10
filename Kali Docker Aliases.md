# **docker aliases**

# webapp

alias juiceshop='docker run --rm --name juiceshop -d -p 3000:3000 bkimminich/juice-shop'

alias burp='xhost + && docker run --name burpsuite -d -it --rm -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/root/.Xauthority -v ctf:/root --net=host fonalex45/project-repo-1:kali-custom burpsuite'

alias sqlmap='docker run  -it --rm --net=host -w /data -v ~/.sqlmap:/root/.sqlmap -v $(pwd):/data fonalex45/project-repo-1:kali-custom sqlmap'

alias wpscan='docker run  -it --rm -v ctf:/root --net=host fonalex45/project-repo-1:kali-custom wpscan'

alias wapiti='docker run  --rm -it -v ctf:/home/.wapiti/generated_report/ --net=host fonalex45/project-repo-1:kali-custom wapiti'



# recon
alias spiderfoot='docker run -it --net=host fonalex45/project-repo-1:kali-custom spiderfoot -l 127.0.0.1:5009'

alias nmap='docker run --name nmap --rm --net=host -v "$(pwd)":/data --privileged fonalex45/project-repo-1:kali-custom nmap'

alias nmap1='docker run --name nmap --rm --net=host -v "$(pwd)":/data --privileged fonalex45/project-repo-1:kali-custom nmap -sC -sV -Pn -p-'

alias nmapdiscover='docker run --name nmap --rm --net=host -v "$(pwd)":/data --privileged fonalex45/project-repo-1:kali-custom nmap --script discovery -p-'

alias dnsenum='docker run --name dnsenum -it --rm -v "$(pwd)":/data fonalex45/project-repo-1:kali-custom dnsenum'

alias dnsrecon='docker run --name dnsrecon -it --rm fonalex45/project-repo-1:kali-custom dnsrecon'

alias amass='docker run -it --rm -v "$(pwd)":/.config/amass fonalex45/project-repo-1:kali-custom amass'

alias smbmap='docker run -it --rm -v "$(pwd)":/data fonalex45/project-repo-1:kali-custom smbmap'

alias autorecon='docker run -it --rm -v autorecon:/autorecon fonalex45/project-repo-1:kali-custom autorecon --output /autorecon'


# enumeration

alias venom='docker run --name msfvenom -it --rm -v data:/data fonalex45/project-repo-1:kali-custom msfvenom'

alias dirb='docker run -it --rm --net=host fonalex45/project-repo-1:kali-custom dirb'

alias ffuf='docker run -it --rm --net=host fonalex45/project-repo-1:kali-custom ffuf'

alias gobuster='docker run -it --rm  --net=host fonalex45/project-repo-1:kali-custom gobuster'

alias snmpcheck='docker run -it --rm --name snmpcheck -v data:/data fonalex45/project-repo-1:kali-custom snmpcheck'

alias exiftool='docker run --rm -it -v "$(pwd)":/tmp fonalex45/project-repo-1:kali-custom exiftool'

alias e4l='docker run --rm -it fonalex45/project-repo-1:kali-custom enum4linux'

alias 161='docker run --rm -it fonalex45/project-repo-1:kali-custom onesixtyone'

alias smbclient='docker run --rm -it fonalex45/project-repo-1:kali-custom smbclient'

alias rpcclient='docker run --rm -it fonalex45/project-repo-1:kali-custom rpcclient'



# exploit

alias kali='docker run --rm -it -e HOME=/home -v /home/roland/.kali:/root/ fonalex45/project-repo-1:kali-custom'

alias msf='docker run -it --rm --net=host  -v ~/.msf4:/root/.msf4 -v /tmp/msf:/tmp/data fonalex45/project-repo-1:kali-custom msfconsole'

alias chisel='docker run -it --rm --net=host fonalex45/project-repo-1:kali-custom chisel'

alias responder='docker run -it --rm --net=host fonalex45/project-repo-1:kali-custom responder'

alias evil='docker run -it --rm -w /data -v data:/data fonalex45/project-repo-1:kali-custom evil-winrm'

alias crunch='docker run -it --rm --name crunch -v data:/data fonalex45/project-repo-1:kali-custom crunch'

alias cme='docker run -it --rm --net=host -v data:/home fonalex45/project-repo-1:kali-custom crackmapexec'
