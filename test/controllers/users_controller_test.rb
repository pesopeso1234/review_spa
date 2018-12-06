require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get edit" do
    get users_edit_url
    assert_response :success
  end

  test "should get update" do
    get users_update_url
    assert_response :success
  end

  test "should get edit_complete" do
    get users_edit_complete_url
    assert_response :success
  end

  test "should get withdraw_confirm" do
    get users_withdraw_confirm_url
    assert_response :success
  end

  test "should get destroy" do
    get users_destroy_url
    assert_response :success
  end

  test "should get withdraw_complete" do
    get users_withdraw_complete_url
    assert_response :success
  end

end
