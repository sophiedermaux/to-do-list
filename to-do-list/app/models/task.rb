class Task < ActiveRecord::Base
  validates :description, presence:true
  scope :complete, -> { where(completed: true) }

end
