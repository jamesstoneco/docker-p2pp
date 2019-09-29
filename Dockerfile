FROM openjdk:8
RUN apt-get update && apt-get install -y apt-file
RUN apt-get update && apt-get install -y \
    libxext6 \
    libxtst6 \
    libxrender1 \
    tar
COPY ./p2pp-2.13.4 /usr/src/myapp/p2pp
WORKDIR /usr/src/myapp
ENV DISPLAY=host.docker.internal:0
CMD ["/usr/src/myapp/bin/pp2p"]

