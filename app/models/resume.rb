class Resume < ActiveRecord::Base
  belongs_to :user

  has_many :education
  has_many :experience
  has_many :language
  has_many :skill
end
