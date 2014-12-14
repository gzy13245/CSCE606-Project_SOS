class Family < ActiveRecord::Base
  belongs_to :user
  has_many :children, dependent: :destroy

end
