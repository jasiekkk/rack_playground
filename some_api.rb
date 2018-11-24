# require 'rubygems'
require 'grape'

module Some
  class API < Grape::API
    version 'v1', using: :header, vendor: 'some'
    format :json
    prefix :api


    resource :info do
      desc 'Return some info.'
      get :some_info do
        ['this', 'is', 'some', 'info']
      end
    end
  end
end

# localhost:9292/api/info/some_info
