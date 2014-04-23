require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get updated" do
    get :updated
    assert_response :success
  end

  test "should get destroy" do
    get :destroy
    assert_response :success
  end

end
