module Sample
  class Patient
    include Mongoid::Document

    field :firstName, type: String
    field :lastName, type: String
  end
end
