FROM ruby:2.7.4

ENV TZ Asia/Tokyo
ENV LANG C.UTF-8

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs && \
    apt-get clean && \
    rm -rf /var/cache/apt

RUN mkdir /app

COPY Gemfile Gemfile.lock /app/

WORKDIR /app
RUN bundle install

COPY . /app
