class Child < ActiveRecord::Base
  belongs_to :family
  has_many :taking_courses, dependent: :destroy
  has_many :courses, through: :taking_courses
end
