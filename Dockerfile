FROM ubuntu:15.10

RUN apt-get update
RUN apt-get install -y -q vim curl git build-essential cmake pkg-config
RUN apt-get install -y -q libjpeg8-dev libtiff5-dev libjasper-dev libeigen3-dev
RUN apt-get install -y -q libpng12-dev libavcodec-dev libavformat-dev libswscale-dev
RUN apt-get install -y -q libopenexr-dev libv4l-dev libatlas-base-dev

RUN curl -fsSL https://raw.githubusercontent.com/benjohnde/dockerbase-opencv/master/build_opencv.sh | sh
RUN rm -rf /build_opencv.sh
