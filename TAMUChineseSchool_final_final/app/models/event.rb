class Event < ActiveRecord::Base
 # attr_accessible :year, :semester, :course_name, :course_description, :place,
  #                  :time, :textbook, :teacher, :created_at

  belongs_to :user
end

