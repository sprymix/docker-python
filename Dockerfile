FROM python:3
MAINTAINER elprans@sprymix.com

RUN mkdir -p /usr/local/share/ca-certificates/
ADD certs/*.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates --fresh
