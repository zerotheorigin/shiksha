require 'test_helper'

class KarthickDemosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @karthick_demo = karthick_demos(:one)
  end

  test "should get index" do
    get karthick_demos_url
    assert_response :success
  end

  test "should get new" do
    get new_karthick_demo_url
    assert_response :success
  end

  test "should create karthick_demo" do
    assert_difference('KarthickDemo.count') do
      post karthick_demos_url, params: { karthick_demo: { age: @karthick_demo.age, gender: @karthick_demo.gender, hobbies: @karthick_demo.hobbies, interests: @karthick_demo.interests, name: @karthick_demo.name, skills: @karthick_demo.skills } }
    end

    assert_redirected_to karthick_demo_url(KarthickDemo.last)
  end

  test "should show karthick_demo" do
    get karthick_demo_url(@karthick_demo)
    assert_response :success
  end

  test "should get edit" do
    get edit_karthick_demo_url(@karthick_demo)
    assert_response :success
  end

  test "should update karthick_demo" do
    patch karthick_demo_url(@karthick_demo), params: { karthick_demo: { age: @karthick_demo.age, gender: @karthick_demo.gender, hobbies: @karthick_demo.hobbies, interests: @karthick_demo.interests, name: @karthick_demo.name, skills: @karthick_demo.skills } }
    assert_redirected_to karthick_demo_url(@karthick_demo)
  end

  test "should destroy karthick_demo" do
    assert_difference('KarthickDemo.count', -1) do
      delete karthick_demo_url(@karthick_demo)
    end

    assert_redirected_to karthick_demos_url
  end
end
