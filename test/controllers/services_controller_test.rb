require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get service_search_form" do
    get services_service_search_form_url
    assert_response :success
  end

  test "should get service_search" do
    get services_service_search_url
    assert_response :success
  end

  test "should get service_search_list" do
    get services_service_search_list_url
    assert_response :success
  end

end
