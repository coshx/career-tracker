class ResumeSection
  include Mongoid::Document

  embedded_in :resume
end
