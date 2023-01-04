FROM elixir:1.14.2

RUN apt-get update && apt-get install -y

ENV NODE_VERSION 16.x

RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION} | bash \
  && apt-get install -y nodejs inotify-tools

RUN npm install npm@latest -g

RUN mix do \
    local.hex --force, \
    local.rebar --force, \
    archive.install --force hex phx_new

WORKDIR /app