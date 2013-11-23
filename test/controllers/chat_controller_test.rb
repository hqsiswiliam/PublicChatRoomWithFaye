require 'test_helper'

class ChatControllerTest < ActionController::TestCase
  test "should get public_room" do
    get :public_room
    assert_response :success
  end

end
