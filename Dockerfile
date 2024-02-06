FROM ruby:3.2.2

RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /product
COPY Gemfile Gemfile.lock /product/
RUN bundle install