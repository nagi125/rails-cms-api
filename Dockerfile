FROM ruby:2.7.4

ENV TZ Asia/Tokyo
ENV LANG C.UTF-8

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs && \
    apt-get clean && \
    rm -rf /var/cache/apt

WORKDIR /app

COPY Gemfile Gemfile.lock /app/

RUN bundle install --path vendor/bundle

COPY . /app

CMD ["/bin/bash", "/app/docker-entrypoint.sh"]
