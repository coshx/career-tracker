class Achievement
  include Mongoid::Document

  field :title
  field :description
  field :results
  field :keywords
  field :start_date, type: Date
  field :end_date, type: Date
end
