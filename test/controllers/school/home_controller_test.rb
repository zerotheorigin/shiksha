require 'test_helper'

class School::HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get school_home_index_url
    assert_response :success
  end

  test "should get search" do
    get school_home_search_url
    assert_response :success
  end

end
