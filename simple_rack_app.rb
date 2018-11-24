require 'rack'
require 'rack/server'

class SomeHomePageResponse
  def response
    [200, { 'Content-Type' => 'text/plain' }, ['some home page response!']]
  end
end

class SomeNotHomePageResponse
  def response
    [200, { 'Content-Type' => 'text/plain' }, ['some not home page response!']]
  end
end

require 'json'

class SomeApiResponse
  def response
    [200, { 'Content-Type' => 'application/json' }, [{ msg: 'some API response!' }.to_json]]
  end
end

class RackApp
  def self.call(env)
    return SomeHomePageResponse.new.response if env['REQUEST_PATH'] == '/'
    return SomeApiResponse.new.response if env['REQUEST_PATH'] =='/api'
    SomeNotHomePageResponse.new.response
  end
end

Rack::Server.start app: RackApp

# ruby simple_rack_app.rb
