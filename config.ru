require 'rack/cors'
require 'mongoid'
require './app'
require './models/patient'

Mongoid.load!("config/mongoid.yml", ENV['RACK_ENV'] || :development)

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get ,:post, :put, :delete]
  end
end

run Sample::API
