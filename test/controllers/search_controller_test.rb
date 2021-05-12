require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get city" do
    get search_city_url
    assert_response :success
  end

  test "should get location" do
    get search_location_url
    assert_response :success
  end

  test "should get school" do
    get search_school_url
    assert_response :success
  end

  test "should get section" do
    get search_section_url
    assert_response :success
  end

end
