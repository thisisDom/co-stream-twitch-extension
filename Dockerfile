FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /costreamextension
WORKDIR /costreamextension
ADD Gemfile /costreamextension/Gemfile
ADD Gemfile.lock /costreamextension/Gemfile.lock
RUN bundle install
ADD . /costreamextension
