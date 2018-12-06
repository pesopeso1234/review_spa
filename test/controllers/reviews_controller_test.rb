require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get reviews_new_url
    assert_response :success
  end

  test "should get create" do
    get reviews_create_url
    assert_response :success
  end

  test "should get complete" do
    get reviews_complete_url
    assert_response :success
  end

  test "should get edit" do
    get reviews_edit_url
    assert_response :success
  end

  test "should get update" do
    get reviews_update_url
    assert_response :success
  end

  test "should get edit_complete" do
    get reviews_edit_complete_url
    assert_response :success
  end

  test "should get destroy" do
    get reviews_destroy_url
    assert_response :success
  end

end
