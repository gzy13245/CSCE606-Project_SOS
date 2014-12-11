class User < ActiveRecord::Base
  has_many :teachers, dependent: :destroy

  def fullname
    first_name+" "+last_name
  end
end
