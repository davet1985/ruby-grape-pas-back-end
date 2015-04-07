require 'grape'
require 'json'

module Sample

  class API < Grape::API

    format :json

    get :patients do
      JSON.parse('[
          {
            "id" : 1
          },
          {
            "id" : 2
          }
        ]')
    end

    get '/patient/:id' do
      JSON.parse("{
        \"id\" : #{params[:id]}
      }")
    end

  end

end