FROM ubuntu:latest

RUN apt update # Because by default the image doesn't know about any packages

# Thank you https://stackoverflow.com/a/58264927
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata

# A C++ compiler and friends
RUN apt install -y build-essential

# Install all of the Lagrange dependancies
RUN apt install -y git cmake zip libsdl2-dev libssl-dev libpcre3-dev zlib1g-dev libunistring-dev libfribidi-dev libmpg123-dev

VOLUME ["/lagrange"]
WORKDIR /lagrange
