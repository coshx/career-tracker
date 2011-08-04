class Institution
  include Mongoid::Document

  field :name
  field :type

  embeds_one :address
  referenced_in :institution
end
