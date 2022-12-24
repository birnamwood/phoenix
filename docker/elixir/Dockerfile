FROM elixir:1.14.2-slim

RUN apt-get update && apt-get install -y

ENV NODE_VERSION 16.x

RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash \
  && apt-get install -y nodejs

RUN mix do \
    local.hex --force, \
    archive.install --force hex phx_new