class Position
  include Mongoid::Document

  field :title
  field :description
  field :start_date, type: Date
  field :end_date, type: Date

  
  belongs_to :institution
  belongs_to :user
  has_many :achievements
end
