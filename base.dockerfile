FROM ubuntu:16.04
MAINTAINER akiyamam

ENV LANG C.UTF-8
WORKDIR /usr/local/src
RUN apt-get update -y && apt-get install -y \
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
    && curl -o Python-3.6.4.tar.xz https://www.python.org/ftp/python/3.6.4/Python-3.6.4.tar.xz \
    && tar xJf Python-3.6.4.tar.xz \
    && cd /usr/local/src/Python-3.6.4 \
    && ./configure \
    && make -j4 \
    && make install \
    && ldconfig \
    && cd / \
    && rm -rf /usr/local/src/Python*
RUN pip3 install virtualenv 
RUN pip3 install pipenv
