FROM akiyamam/slack_downloader-base:0.1
MAINTAINER akiyamam

WORKDIR /usr/local/app
ADD Pipfile.lock .
RUN pipenv install --ignore-pipfile -d
