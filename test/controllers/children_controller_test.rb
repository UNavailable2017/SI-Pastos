require 'test_helper'

class ChildrenControllerTest < ActionDispatch::IntegrationTest
  setup do
    @child = children(:one)
  end
end
