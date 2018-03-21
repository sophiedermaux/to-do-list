require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  should validate_presence_of(:description)
end
