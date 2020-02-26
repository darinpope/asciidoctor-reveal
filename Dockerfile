FROM ruby:2.7.0-buster

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN bundle config --local github.https true && \
    bundle --path=.bundle/gems --binstubs=.bundle/.bin
    
ENTRYPOINT["bundle","exec","asciidoctor-revealjs"]
