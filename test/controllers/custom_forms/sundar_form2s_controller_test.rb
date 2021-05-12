require 'test_helper'

class CustomForms::SundarForm2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_forms_sundar_form2 = custom_forms_sundar_form2s(:one)
  end

  test "should get index" do
    get custom_forms_sundar_form2s_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_forms_sundar_form2_url
    assert_response :success
  end

  test "should create custom_forms_sundar_form2" do
    assert_difference('CustomForms::SundarForm2.count') do
      post custom_forms_sundar_form2s_url, params: { custom_forms_sundar_form2: { age: @custom_forms_sundar_form2.age, email: @custom_forms_sundar_form2.email, name: @custom_forms_sundar_form2.name } }
    end

    assert_redirected_to custom_forms_sundar_form2_url(CustomForms::SundarForm2.last)
  end

  test "should show custom_forms_sundar_form2" do
    get custom_forms_sundar_form2_url(@custom_forms_sundar_form2)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_forms_sundar_form2_url(@custom_forms_sundar_form2)
    assert_response :success
  end

  test "should update custom_forms_sundar_form2" do
    patch custom_forms_sundar_form2_url(@custom_forms_sundar_form2), params: { custom_forms_sundar_form2: { age: @custom_forms_sundar_form2.age, email: @custom_forms_sundar_form2.email, name: @custom_forms_sundar_form2.name } }
    assert_redirected_to custom_forms_sundar_form2_url(@custom_forms_sundar_form2)
  end

  test "should destroy custom_forms_sundar_form2" do
    assert_difference('CustomForms::SundarForm2.count', -1) do
      delete custom_forms_sundar_form2_url(@custom_forms_sundar_form2)
    end

    assert_redirected_to custom_forms_sundar_form2s_url
  end
end
