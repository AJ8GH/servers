require 'rack'
require 'thin'

# running file launches server
# visit to http://localhost:8080/ displays HelloWorld
class HelloWorld
  def call(env)
    [200, { 'Content-Type' => 'text/plain' }, ['Hello World']]
  end
end

Rack::Handler::Thin.run HelloWorld.new


# replacing hello world with env, returns the env object to localhost 8080
# it is a big hash full of data around the server and requests
class HelloWorld
  def call(env)
    [200, { 'Content-Type' => 'text/plain' }, [env]]
  end
end

Rack::Handler::Thin.run HelloWorld.new
