FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt  update
RUN apt install -y -q vim curl git build-essential cmake pkg-config software-properties-common
RUN add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
RUN apt install -y -q libjpeg8-dev libtiff5-dev libjasper1 libjasper-dev libeigen3-dev
RUN apt install -y -q libpng-dev libavcodec-dev libavformat-dev libswscale-dev
RUN apt install -y -q libopenexr-dev libv4l-dev libatlas-base-dev

COPY build_opencv.sh /
RUN ["./build_opencv.sh"]
RUN ["rm -rf /build_opencv.sh"]
