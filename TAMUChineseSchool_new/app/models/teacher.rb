class Teacher < ActiveRecord::Base
  has_many :course, dependent: :destroy
  belongs_to :user

  def fullname

    User.find(user_id).fullname


  end
end
