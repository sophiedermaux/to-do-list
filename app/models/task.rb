class Task < ActiveRecord::Base
  validates :description, presence:true
  scope :completed, -> { where(completed: true) }
  scope :incomplete, -> { where(completed: false) }
end
