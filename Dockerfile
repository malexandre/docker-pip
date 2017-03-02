FROM alpine
LABEL maintainer "marc@malexandre.fr"

RUN apk update && apk add git python wget ssh && rm -rf /var/cache/apk/*
RUN wget https://bootstrap.pypa.io/get-pip.py --no-check-certificate && python get-pip.py && rm get-pip.py
RUN apk del wget

WORKDIR /code
