require 'test_helper'

class BasseinControllerTest < ActionController::TestCase
  test "should get sostav_b" do
    get :sostav_b
    assert_response :success
  end

  test "should get izmenenie_b" do
    get :izmenenie_b
    assert_response :success
  end

end
