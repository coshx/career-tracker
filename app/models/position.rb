class Position
  include Mongoid::Document

  field :title
  field :description
  field :start_date, type: Date
  field :end_date, type: Date

  
  references_one :institution
end
