alias burp='xhost + && docker run --name burpsuite -d -it --rm -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/root/.Xauthority -v ctf:/root --net=host fonalex45/project-repo-1:kali-burp burpsuite'