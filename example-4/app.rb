require 'sinatra'

set :bind, '0.0.0.0'

require "redis"

$redis = Redis.new(:host => "redis", :port => 6379)
$redis.set("counter", "0")

get '/' do
  counter = $redis.incr("counter")
  "Counter now is #{counter}!"
end