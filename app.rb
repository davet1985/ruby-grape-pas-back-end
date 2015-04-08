require 'grape'

module Sample

  class API < Grape::API

    format :json

    namespace :patient do
      post do
        patient = Sample::Patient.create!(
          firstName: params[:firstName],
          lastName: params[:lastName]
        )
      end

      get ':_id' do
        patient = Sample::Patient.find(params[:_id])
        error! "Not Found", 404 unless patient
        patient
      end

      put ':_id' do
        patient = Sample::Patient.find(params[:_id])
        error! "Not Found", 404 unless patient
        values = {}
        values[:firstName] = params[:firstName] if params.key?(:firstName)
        values[:lastName] = params[:lastName] if params.key?(:lastName)
        patient.update_attributes!(values)
        patient
      end
    end

    namespace :patients do
      get do
       Sample::Patient.all()
      end
    end

  end

end