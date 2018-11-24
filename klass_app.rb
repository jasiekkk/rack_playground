# run KlassApp.new

# class KlassApp
#   def call(env)
#     request = Rack::Request.new(env)
#     # [ 200, { 'Content-Type' => 'text/plain' }, ['klass app'] ]
#     # Rack::Response.new("klass app response") # "" required
#     case request.path
#     when '/'
#       Rack::Response.new(File.read('index.html'))
#     when '/sth'
#       Rack::Response.new("Not Found", 404)
#     else
#       Rack::Response.new { |r| r.redirect("/") }
#     end
#   end
# end

# ________________________________________________________________________________________________________________

# run KlassApp

class KlassApp
  # to avoid peristing any possible ivars between requests
  def self.call(env)
    new(env).response
  end

  def initialize(env)
    @env = env
  end

  def response
    request = Rack::Request.new(@env)
    # [ 200, { 'Content-Type' => 'text/plain' }, ['klass app'] ]
    # Rack::Response.new("klass app response") # "" required
    case request.path
    when '/'
      Rack::Response.new(File.read('index.html'))
    when '/sth'
      Rack::Response.new("Not Found", 404)
    else
      Rack::Response.new { |r| r.redirect("/") }
    end
  end
end
