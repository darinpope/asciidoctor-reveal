FROM ruby:2.7.0-buster

WORKDIR /opt

COPY Gemfile ./

RUN bundle config --local github.https true && \
    bundle --path=.bundle/gems --binstubs=.bundle/.bin

VOLUME /opt/slides
WORKDIR /opt/slides
ENTRYPOINT ["/usr/local/bin/bundle","exec","asciidoctor-revealjs"]
