require 'test_helper'

class PoolsControllerTest < ActionController::TestCase
  test "should get sostav_b" do
    get :sostav_b
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

end
