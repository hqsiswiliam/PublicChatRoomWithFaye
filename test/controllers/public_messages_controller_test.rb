require 'test_helper'

class PublicMessagesControllerTest < ActionController::TestCase
  setup do
    @public_message = public_messages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:public_messages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create public_message" do
    assert_difference('PublicMessage.count') do
      post :create, public_message: { email: @public_message.email, public_message: @public_message.public_message }
    end

    assert_redirected_to public_message_path(assigns(:public_message))
  end

  test "should show public_message" do
    get :show, id: @public_message
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @public_message
    assert_response :success
  end

  test "should update public_message" do
    patch :update, id: @public_message, public_message: { email: @public_message.email, public_message: @public_message.public_message }
    assert_redirected_to public_message_path(assigns(:public_message))
  end

  test "should destroy public_message" do
    assert_difference('PublicMessage.count', -1) do
      delete :destroy, id: @public_message
    end

    assert_redirected_to public_messages_path
  end
end
