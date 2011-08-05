class ResumeSection
  include Mongoid::Document

  field :type
  field :title
  
  embedded_in :resume
end
