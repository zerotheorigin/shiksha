require 'test_helper'

class Teachers::HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get teachers_home_index_url
    assert_response :success
  end

  test "should get search" do
    get teachers_home_search_url
    assert_response :success
  end

end
