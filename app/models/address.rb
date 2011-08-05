class Address
  include Mongoid::Document

  field :description
  field :street_1
  field :street_2
  field :city
  field :state
  field :zip
  field :phone

  embedded_in :user
  embedded_in :institution
end
