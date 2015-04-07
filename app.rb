require 'grape'
require 'json'

module Sample

  class API < Grape::API

    format :json

    get :patients do
      JSON.parse('{
        "patients": [
          {
            "id" : 1,
            "firstName" : "Dave",
            "lastName" : "Thompson"
          },
          {
            "id" : 2,
            "firstName" : "Fred",
            "lastName" : "Flintstone"
          }
        ]
      }')
    end

    get '/patient/:id' do
      JSON.parse("{
        \"id\" : #{params[:id]},
        \"firstName\" : \"Dave\",
        \"lastName\" : \"Thompson\"
      }")
    end

    post '/patient/:id' do
      puts "Saving patient #{params[:id]}"
    end

  end

end