class Resume
  include Mongoid::Document
  belongs_to :user

  field :title
  
  embeds_many :resume_sections
  has_many :achievements
end