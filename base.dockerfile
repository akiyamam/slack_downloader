FROM ubuntu:16.04
MAINTAINER akiyamam

RUN apt-get update -y && apt-get upgrade -y \
&&  apt-get install -y \
     	gcc make curl \
        zlib1g-dev \
	libssl-dev \
	libsqlite3-dev \
	libreadline-dev \
	libgdbm-dev \
	libncurses5-dev \
	libbz2-dev \
	liblzma-dev \
	tk8.5-dev \
&& curl -O https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tgz \
&& tar xzf Python-3.6.4.tgz \
&& cd /Python-3.6.4 \
&&    ./configure \
&&    make \
&&    make install
