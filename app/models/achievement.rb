class Achievement
  include Mongoid::Document

  field :description
  field :results
  field :keywords
  field :start_date, type: Date
  field :end_date, type: Date

  belongs_to :position
  belongs_to :user
  belongs_to :resume
end
