require 'test_helper'

class SundarFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sundar_form = sundar_forms(:one)
  end

  test "should get index" do
    get sundar_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_sundar_form_url
    assert_response :success
  end

  test "should create sundar_form" do
    assert_difference('SundarForm.count') do
      post sundar_forms_url, params: { sundar_form: { address: @sundar_form.address, age: @sundar_form.age, name: @sundar_form.name, profile: @sundar_form.profile } }
    end

    assert_redirected_to sundar_form_url(SundarForm.last)
  end

  test "should show sundar_form" do
    get sundar_form_url(@sundar_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_sundar_form_url(@sundar_form)
    assert_response :success
  end

  test "should update sundar_form" do
    patch sundar_form_url(@sundar_form), params: { sundar_form: { address: @sundar_form.address, age: @sundar_form.age, name: @sundar_form.name, profile: @sundar_form.profile } }
    assert_redirected_to sundar_form_url(@sundar_form)
  end

  test "should destroy sundar_form" do
    assert_difference('SundarForm.count', -1) do
      delete sundar_form_url(@sundar_form)
    end

    assert_redirected_to sundar_forms_url
  end
end
