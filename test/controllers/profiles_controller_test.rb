require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get ask" do
    get :ask
    assert_response :success
  end

  test "should get display" do
    get :display
    assert_response :success
  end

end
