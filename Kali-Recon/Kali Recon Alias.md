# **docker aliases**

alias dnsenum='docker run --name dnsenum -it --rm -v "$(pwd)":/data fonalex45/project-repo-1:kali-recon dnsenum'

alias dnsrecon='docker run --name dnsrecon -it --rm fonalex45/project-repo-1:kali-recon dnsrecon'

alias nmap='docker run --name nmap --rm --net=host -v "$(pwd)":/data  fonalex45/project-repo-1:kali-recon nmap'

alias spiderfoot='docker run -it --net=host fonalex45/project-repo-1:kali-recon spiderfoot -l 127.0.0.1:5009'
