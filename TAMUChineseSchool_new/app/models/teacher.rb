class Teacher < ActiveRecord::Base
  has_many :course
  belongs_to :user

  def fullname

    User.find(user_id).fullname


  end
end
