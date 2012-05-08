require 'test_helper'

class GruppyControllerTest < ActionController::TestCase
  test "should get spisok_g" do
    get :spisok_g
    assert_response :success
  end

  test "should get novaia" do
    get :novaia
    assert_response :success
  end

  test "should get sostav_g" do
    get :sostav_g
    assert_response :success
  end

end
