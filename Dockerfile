FROM ruby:3.2.2-alpine

WORKDIR /app

COPY . /app

RUN apk update && apk upgrade && \
    apk add --no-cache build-base \
                       git

CMD ['bin/ash']
