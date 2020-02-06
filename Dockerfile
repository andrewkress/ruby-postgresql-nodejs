FROM ruby:2.6.0
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash \
  && echo "deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main" | tee /etc/apt/sources.list.d/postgres.list \
  && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - \
  && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update \
  && apt-get install -y postgresql postgresql-contrib nodejs \
  && apt-get install sudo \
  && apt-get clean \
  && npm install -g yarn@berry \
  && gem update bundler \
  && gem update --system \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
