docker build -t p2pp .
docker run -e DISPLAY=$IP:0 -v /tmp/.X11-unix:/tmp/.X11-unix -it p2pp /bin/bash