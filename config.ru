require 'rack/cors'
require './app'

use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: :post
  end
end

run Sample::API