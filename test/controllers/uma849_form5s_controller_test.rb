require 'test_helper'

class Uma849Form5sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uma849_form5 = uma849_form5s(:one)
  end

  test "should get index" do
    get uma849_form5s_url
    assert_response :success
  end

  test "should get new" do
    get new_uma849_form5_url
    assert_response :success
  end

  test "should create uma849_form5" do
    assert_difference('Uma849Form5.count') do
      post uma849_form5s_url, params: { uma849_form5: { age: @uma849_form5.age, name: @uma849_form5.name, sex: @uma849_form5.sex } }
    end

    assert_redirected_to uma849_form5_url(Uma849Form5.last)
  end

  test "should show uma849_form5" do
    get uma849_form5_url(@uma849_form5)
    assert_response :success
  end

  test "should get edit" do
    get edit_uma849_form5_url(@uma849_form5)
    assert_response :success
  end

  test "should update uma849_form5" do
    patch uma849_form5_url(@uma849_form5), params: { uma849_form5: { age: @uma849_form5.age, name: @uma849_form5.name, sex: @uma849_form5.sex } }
    assert_redirected_to uma849_form5_url(@uma849_form5)
  end

  test "should destroy uma849_form5" do
    assert_difference('Uma849Form5.count', -1) do
      delete uma849_form5_url(@uma849_form5)
    end

    assert_redirected_to uma849_form5s_url
  end
end
