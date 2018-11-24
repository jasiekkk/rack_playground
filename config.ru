
# require 'thin'

# ________________________________________________________________________________________________________________

# Klass:

# require_relative 'klass_app'

# use Rack::Reloader, 0
# use Rack::Auth::Basic do |username, password|
#   password == 'some password'
# end

# run KlassApp

# ________________________________________________________________________________________________________________

# Proc:

# proc_app = Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, ['proc app']] } 

# run proc_app

# ________________________________________________________________________________________________________________

# Lambda

# lambda_app = -> (env) { ['200', {'Content-Type' => 'text/html'}, ['lambda app']] }

# run lambda_app

# ________________________________________________________________________________________________________________

# require_relative 'some_api'
# run Some::API

# rackup config.ru

# thin start -p 3001
