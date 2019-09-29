FROM openjdk:8
RUN apt-get update && apt-get install -y apt-file
RUN apt-get update && apt-get install -y \
    libxext6 \
    libxtst6 \
    libxrender1 \
    tar
RUN useradd -m docker 
RUN echo "docker:test" | chpasswd 
RUN usermod -s /bin/bash docker 
RUN usermod -aG sudo docker 
ENV HOME /home/docker

COPY ./p2pp /usr/src/myapp/p2pp
WORKDIR /usr/src/myapp
CMD ["/usr/src/myapp/p2pp/bin/p2pp"]

