class Course < ActiveRecord::Base
  has_many :taking_courses, dependent: :destroy
  has_many :children, through: :taking_courses
end
