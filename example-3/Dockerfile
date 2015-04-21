FROM liubin/ruby

MAINTAINER Bin Liu <liubin0329@gmail.com>

# for GFW, should change install from network to local
# https://github.com/sinatra/sinatra/archive/v1.4.6.tar.gz
# ADD https://github.com/sinatra/sinatra/archive/v1.4.6.tar.gz /tmp
# RUN cd /tmp \
  # && tar zxf v1.4.6.tar.gz \
  # && cd sinatra-1.4.6 \
  # && gem build sintra.gemspec \
  # && gem install ...

RUN gem install sinatra

ADD app.rb /app.rb

CMD ['ruby', '/app.rb']
