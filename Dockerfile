FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=3.0.5

RUN gem install buildmeister --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["buildmeister"]
CMD ["--help"]
