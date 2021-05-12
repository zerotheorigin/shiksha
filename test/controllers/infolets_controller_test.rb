require 'test_helper'

class InfoletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @infolet = infolets(:one)
  end

  test "should get index" do
    get infolets_url
    assert_response :success
  end

  test "should get new" do
    get new_infolet_url
    assert_response :success
  end

  test "should create infolet" do
    assert_difference('Infolet.count') do
      post infolets_url, params: { infolet: { student_id: @infolet.student_id, teacher_id: @infolet.teacher_id } }
    end

    assert_redirected_to infolet_url(Infolet.last)
  end

  test "should show infolet" do
    get infolet_url(@infolet)
    assert_response :success
  end

  test "should get edit" do
    get edit_infolet_url(@infolet)
    assert_response :success
  end

  test "should update infolet" do
    patch infolet_url(@infolet), params: { infolet: { student_id: @infolet.student_id, teacher_id: @infolet.teacher_id } }
    assert_redirected_to infolet_url(@infolet)
  end

  test "should destroy infolet" do
    assert_difference('Infolet.count', -1) do
      delete infolet_url(@infolet)
    end

    assert_redirected_to infolets_url
  end
end
