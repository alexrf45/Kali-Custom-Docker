#docker aliases

#DFIR

alias volatility='docker run --name volatility --rm -v "$(pwd)":/dumps:rw,Z --privileged -it phocean/volatility'

alias wireshark='docker run -d --name=wireshark --net=host --cap-add=NET_ADMIN -e PUID=1000 -e PGUID=1000 -e TZ=Europe/London -p 3000:3000 -v /home/roland/.wireshark:/config --restart unless-stopped linuxserver/wireshark'

#GRC

alias simplerisk='docker run --rm -d --name simplerisk -d -p 80:80 -p 443:443 simplerisk/simplerisk'

#webapp

alias juiceshop='docker run --rm --name juiceshop -d -p 3000:3000 bkimminich/juice-shop'

alias burp='xhost + && docker run --name burpsuite -d -it --rm -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/root/.Xauthority --net=host fonalex45/project-repo-1:kali-custom java -jar /usr/bin/burpsuite'

alias sqlmap='docker run --name sqlmap -it --rm --net=host -w /data -v ~/.sqlmap:/root/.sqlmap -v $PWD:/data fonalex45/project-repo-1:kali-custom sqlmap'

alias wpscan='docker run --name wpscan -it --rm -v $(PWD):/root fonalex45/project-repo-1:kali-custom wpscan'

alias wapiti='docker run --name wapiti --rm -it -w /data -v $(PWD):/root/.wapiti/  fonalex45/project-repo-1:kali-custom wapiti'

#recon

alias spiderfoot='docker run -it --net=host fonalex45/project-repo-1:kali-custom spiderfoot -l 127.0.0.1:5009'

alias nmap='docker run --name nmap --rm --net=host -v $(pwd):/data --privileged fonalex45/project-repo-1:kali-custom nmap'

alias dnsenum='docker run --name dnsenum -it --rm -w /data -v data:/data fonalex45/project-repo-1:kali-custom dnsenum'

alias dnsrecon='docker run --name dnsrecon -it --rm fonalex45/project-repo-1:kali-custom dnsrecon'

alias amass='docker run -it --rm -v $(pwd):/.config/amass fonalex45/project-repo-1:kali-custom amass'

alias smbmap='docker run -it --rm -v $(pwd):/data fonalex45/project-repo-1:kali-custom smbmap'


#enumeration

alias venom='docker run --name msfvenom -it --rm -w /data -v data:/data fonalex45/project-repo-1:kali-custom msfvenom'

alias dirb='docker run -it --rm -w /data -v $(pwd):/data fonalex45/project-repo-1:kali-custom dirb'

alias ffuf='docker run --name ffuff -it --rm -w /data -v $(pwd):/data fonalex45/project-repo-1:kali-custom ffuf'

alias gobuster='docker run -it --rm -w /data -v $(pwd):/data fonalex45/project-repo-1:kali-custom gobuster'

alias snmpcheck='docker run -it --rm --name snmpcheck -v data:/data fonalex45/project-repo-1:kali-custom snmpcheck'

alias exiftool='docker run --rm -it -v $(pwd):/tmp fonalex45/project-repo-1:kali-custom exiftool'

alias e4l='docker run --rm -it fonalex45/project-repo-1:kali-custom enum4linux'

alias 161='docker run --rm -it fonalex45/project-repo-1:kali-custom onesixtyone'

#exploit

alias kali='docker run --name kali-shell --rm -it -v /home/roland/.kali:/root/ fonalex45/project-repo-1:kali-custom'

alias msf='docker run --name msfconsole -it --rm --net=host  -v ~/.msf4:/root/.msf4 -v /tmp/msf:/tmp/data fonalex45/project-repo-1:kali-custom msfconsole'

alias chisel='docker run --name chisel -it --rm --net=host fonalex45/project-repo-1:kali-custom chisel'

alias responder='docker run --name responder -it --rm --net=host fonalex45/project-repo-1:kali-custom responder'

alias evil='docker run -it --rm -v data:/data fonalex45/project-repo-1:kali-custom evil-winrm'

alias crunch='docker run -it --rm --name crunch -v data:/data fonalex45/project-repo-1:kali-custom crunch'

alias cme='docker run -it --rm -v $(pwd):/data fonalex45/project-repo-1:kali-custom crackmapexec'
