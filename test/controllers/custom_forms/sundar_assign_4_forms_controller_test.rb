require 'test_helper'

class CustomForms::SundarAssign4FormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_forms_sundar_assign_4_form = custom_forms_sundar_assign_4_forms(:one)
  end

  test "should get index" do
    get custom_forms_sundar_assign_4_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_forms_sundar_assign_4_form_url
    assert_response :success
  end

  test "should create custom_forms_sundar_assign_4_form" do
    assert_difference('CustomForms::SundarAssign4Form.count') do
      post custom_forms_sundar_assign_4_forms_url, params: { custom_forms_sundar_assign_4_form: { Q1: @custom_forms_sundar_assign_4_form.Q1, Q2: @custom_forms_sundar_assign_4_form.Q2, Q3: @custom_forms_sundar_assign_4_form.Q3, Q4: @custom_forms_sundar_assign_4_form.Q4 } }
    end

    assert_redirected_to custom_forms_sundar_assign_4_form_url(CustomForms::SundarAssign4Form.last)
  end

  test "should show custom_forms_sundar_assign_4_form" do
    get custom_forms_sundar_assign_4_form_url(@custom_forms_sundar_assign_4_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_forms_sundar_assign_4_form_url(@custom_forms_sundar_assign_4_form)
    assert_response :success
  end

  test "should update custom_forms_sundar_assign_4_form" do
    patch custom_forms_sundar_assign_4_form_url(@custom_forms_sundar_assign_4_form), params: { custom_forms_sundar_assign_4_form: { Q1: @custom_forms_sundar_assign_4_form.Q1, Q2: @custom_forms_sundar_assign_4_form.Q2, Q3: @custom_forms_sundar_assign_4_form.Q3, Q4: @custom_forms_sundar_assign_4_form.Q4 } }
    assert_redirected_to custom_forms_sundar_assign_4_form_url(@custom_forms_sundar_assign_4_form)
  end

  test "should destroy custom_forms_sundar_assign_4_form" do
    assert_difference('CustomForms::SundarAssign4Form.count', -1) do
      delete custom_forms_sundar_assign_4_form_url(@custom_forms_sundar_assign_4_form)
    end

    assert_redirected_to custom_forms_sundar_assign_4_forms_url
  end
end
