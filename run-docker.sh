docker build -t p2pp .
docker run -it -u docker -e DISPLAY=$IP:0 -v /tmp/.X11-unix:/tmp/.X11-unix:ro -v "$(pwd)/p2pp":/usr/src/myapp/p2pp p2pp /bin/bash