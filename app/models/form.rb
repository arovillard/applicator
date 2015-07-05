class Form < ActiveRecord::Base
  mount_uploader :resume, ResumeUploader
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :main_intersection, presence: true
  validates :email, presence: true
  validates :cellphone, presence: true
  validates :terms_and_conditions, presence: true

  acts_as_commentable
end
