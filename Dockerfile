FROM ruby:3.3.1-alpine

RUN apk --no-cache add build-base git

COPY lib /action/lib
COPY README.md LICENSE entrypoint.sh /

RUN gem install bundler:2.5.10

ENTRYPOINT ["/entrypoint.sh"]
