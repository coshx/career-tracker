class Institution
  include Mongoid::Document

  field :name
  field :type

  embeds_one :address
  has_many :positions
end
