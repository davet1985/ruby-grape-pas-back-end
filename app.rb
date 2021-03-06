require 'grape'

module Sample

  class API < Grape::API

    format :json

    namespace :patient do
      post do
        patient = Sample::Patient.create!(params.to_h)
      end

      get ':_id' do
        patient = Sample::Patient.find(params[:_id])
        error! "Not Found", 404 unless patient
        patient
      end

      put ':_id' do
        patient = Sample::Patient.find(params[:_id])
        error! "Not Found", 404 unless patient
        patientDetails = params.to_h
        patientDetails.delete("_id")
        patient.update_attributes!(patientDetails)
      end

      delete ':_id' do
        puts 'deleting...'
        patient = Sample::Patient.find(params[:_id])
        error! "Not Found", 404 unless patient
        patient.destroy
      end
    end

    namespace :patients do
      get do
       Sample::Patient.all()
      end
    end

  end

end