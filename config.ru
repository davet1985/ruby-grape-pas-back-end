require 'rack/cors'
require 'mongoid'
require './app'
require './models/patient'

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:post, :put]
  end
end

Mongoid.load!("config/mongoid.yml", ENV['RACK_ENV'] || :development)

run Sample::API
