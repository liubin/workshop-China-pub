FROM ruby

MAINTAINER Bin Liu <liubin0329@gmail.com>

RUN gem sources -r https://rubygems.org/

RUN gem sources -a http://ruby.taobao.org/

RUN gem install sinatra
RUN gem install redis

ADD app.rb /app.rb

CMD ["ruby", "/app.rb"]
