FROM alpine
LABEL maintainer "marc@malexandre.fr"

RUN apk update
RUN apk add git
RUN apk add python
RUN apk add py-pip
RUN apk add openssh-client
RUN rm -rf /var/cache/apk/*
RUN pip install --upgrade pip

WORKDIR /code
