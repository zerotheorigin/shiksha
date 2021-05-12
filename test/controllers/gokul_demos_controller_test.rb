require 'test_helper'

class GokulDemosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gokul_demo = gokul_demos(:one)
  end

  test "should get index" do
    get gokul_demos_url
    assert_response :success
  end

  test "should get new" do
    get new_gokul_demo_url
    assert_response :success
  end

  test "should create gokul_demo" do
    assert_difference('GokulDemo.count') do
      post gokul_demos_url, params: { gokul_demo: { designation: @gokul_demo.designation, employee_no: @gokul_demo.employee_no, name: @gokul_demo.name } }
    end

    assert_redirected_to gokul_demo_url(GokulDemo.last)
  end

  test "should show gokul_demo" do
    get gokul_demo_url(@gokul_demo)
    assert_response :success
  end

  test "should get edit" do
    get edit_gokul_demo_url(@gokul_demo)
    assert_response :success
  end

  test "should update gokul_demo" do
    patch gokul_demo_url(@gokul_demo), params: { gokul_demo: { designation: @gokul_demo.designation, employee_no: @gokul_demo.employee_no, name: @gokul_demo.name } }
    assert_redirected_to gokul_demo_url(@gokul_demo)
  end

  test "should destroy gokul_demo" do
    assert_difference('GokulDemo.count', -1) do
      delete gokul_demo_url(@gokul_demo)
    end

    assert_redirected_to gokul_demos_url
  end
end
