class Form < ActiveRecord::Base
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :main_intersection, presence: true
  validates :email, presence: true
  validates :cellphone, presence: true
  acts_as_commentable
end
