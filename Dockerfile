FROM node:latest AS build
WORKDIR /build

COPY client/package.json client/package-lock.json ./
RUN npm ci

COPY client/src/ src
COPY client/public/ public
RUN npm run build

FROM ruby:2.7.4-alpine

RUN apk add --update --no-cache \
      binutils-gold \
      build-base \
      curl \
      file \
      g++ \
      gcc \
      git \
      less \
      libstdc++ \
      libffi-dev \
      libc-dev \ 
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      make \
      netcat-openbsd \
      nodejs \
      openssl \
      pkgconfig \
      sqlite \
      tzdata

RUN gem install bundler:2.3.26

WORKDIR /app

COPY back-end/Gemfile back-end/Gemfile.lock ./

RUN bundle check || bundle install

COPY back-end/ ./
COPY --from=build /build/build/ public/

RUN rails db:migrate db:seed

COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]