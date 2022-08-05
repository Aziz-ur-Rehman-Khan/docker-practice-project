FROM ruby:2.7.2-alpine

RUN apk add --update ruby-dev\
 build-base\
  nodejs\
   tzdata\
    yaml-dev\
     sqlite-dev

RUN mkdir -p /dockerails

WORKDIR /dockerails/
COPY Gemfile Gemfile.lock ./
RUN gem install bundler
RUN bundle install
COPY . ./

COPY entrypoint.sh /usr/bin/


RUN chmod +x /usr/bin/entrypoint.sh


EXPOSE 3000
ENTRYPOINT ["entrypoint.sh"]
