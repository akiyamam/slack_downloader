FROM akiyamam/slack_downloader-base:0.1
MAINTAINER akyamam

WORKDIR /usr/local/app
ADD Pipfile.lock .
RUN pipenv install --ignore-pipfile -d


