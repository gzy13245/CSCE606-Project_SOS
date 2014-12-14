class TakingCourse < ActiveRecord::Base
  belongs_to :child
  belongs_to :course
end
