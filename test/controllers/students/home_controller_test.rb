require 'test_helper'

class Students::HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get students_home_index_url
    assert_response :success
  end

  test "should get search" do
    get students_home_search_url
    assert_response :success
  end

end
