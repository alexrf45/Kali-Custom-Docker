#docker aliases

#DFIR
alias volatility='docker run --name volatility --rm -v "$(pwd)":/dumps:rw,Z --privileged -it phocean/volatility'

#GRC
alias simplerisk='docker run --rm -d --name simplerisk -d -p 80:80 -p 443:443 simplerisk/simplerisk'

#webapp
alias juiceshop='docker run --rm --name juiceshop -d -p 3000:3000 bkimminich/juice-shop'
alias burpsuite='xhost + && docker run --name burpsuite -d -it --rm -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/root/.Xauthority --net=host fonalex45/project-repo-1:kali-custom java -jar /usr/bin/burpsuite'
alias sqlmap='docker run --name sqlmap -it --rm --net=host -w /data -v ~/.sqlmap:/root/.sqlmap -v $PWD:/data fonalex45/project-repo-1:kali-custom sqlmap'
alias wpscan='docker run --name wpscan -it --rm -v $(PWD):/root fonalex45/project-repo-1:kali-custom wpscan'
alias wapiti='docker run --name wapiti --rm -it -w /data -v $(PWD):/root/.wapiti/  fonalex45/project-repo-1:kali-custom wapiti'

#recon
alias spiderfoot='docker run --name spiderfoot -d -p 5009:5001 -d fonalex45/project-repo-1:spiderfoot'
alias nmap='docker run --name nmap --rm --net=host --mount source=data,destination=/root --privileged fonalex45/project-repo-1:kali-custom   nmap'
alias dnsenum='docker run --name dnsenum -it --rm -w /data -v data:/data fonalex45/project-repo-1:kali-custom dnsenum'
alias dnsrecon='docker run --name dnsrecon -it --rm fonalex45/project-repo-1:kali-custom dnsrecon'

#enumeration
alias msfvenom='docker run --name msfvenom -it --rm -w /data -v data:/data fonalex45/project-repo-1:kali-custom msfvenom'
alias dirb='docker run -it --rm -w /data -v $(pwd):/data fonalex45/project-repo-1:kali-custom dirb'
alias ffuf='docker run --name ffuff -it --rm -w /data -v $(pwd):/data fonalex45/project-repo-1:kali-custom ffuf'
alias gobuster='docker run -it --rm -w /data -v $(pwd):/data fonalex45/project-repo-1:kali-custom gobuster'
alias snmpcheck='docker run -it --rm --name snmpcheck -v data:/data fonalex45/project-repo-1:kali-custom snmpcheck'

#exploit
alias kali='docker run --name kali-shell --rm -it -v /home/roland/.kali:/root/ fonalex45/project-repo-1:kali-custom'
alias msfconsole='docker run --name msfconsole -it --rm --net=host  -v ~/.msf4:/root/.msf4 -v /tmp/msf:/tmp/data fonalex45/project-repo-1:kali-custom msfconsole'
alias chisel='docker run --name chisel -it --rm --net=host fonalex45/project-repo-1:kali-custom chisel'
alias responder='docker run --name responder -it --rm --net=host fonalex45/project-repo-1:kali-custom responder'
alias evil-winrm='docker run -it --rm -v data:/data fonalex45/project-repo-1:kali-custom evil-winrm'
alias crunch='docker run -it --rm --name crunch -v data:/data fonalex45/project-repo-1:kali-custom crunch'

