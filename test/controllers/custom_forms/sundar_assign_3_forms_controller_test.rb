require 'test_helper'

class CustomForms::SundarAssign3FormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_forms_sundar_assign_3_form = custom_forms_sundar_assign_3_forms(:one)
  end

  test "should get index" do
    get custom_forms_sundar_assign_3_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_forms_sundar_assign_3_form_url
    assert_response :success
  end

  test "should create custom_forms_sundar_assign_3_form" do
    assert_difference('CustomForms::SundarAssign3Form.count') do
      post custom_forms_sundar_assign_3_forms_url, params: { custom_forms_sundar_assign_3_form: { Q1: @custom_forms_sundar_assign_3_form.Q1, Q2: @custom_forms_sundar_assign_3_form.Q2, Q3: @custom_forms_sundar_assign_3_form.Q3, Q4: @custom_forms_sundar_assign_3_form.Q4 } }
    end

    assert_redirected_to custom_forms_sundar_assign_3_form_url(CustomForms::SundarAssign3Form.last)
  end

  test "should show custom_forms_sundar_assign_3_form" do
    get custom_forms_sundar_assign_3_form_url(@custom_forms_sundar_assign_3_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_forms_sundar_assign_3_form_url(@custom_forms_sundar_assign_3_form)
    assert_response :success
  end

  test "should update custom_forms_sundar_assign_3_form" do
    patch custom_forms_sundar_assign_3_form_url(@custom_forms_sundar_assign_3_form), params: { custom_forms_sundar_assign_3_form: { Q1: @custom_forms_sundar_assign_3_form.Q1, Q2: @custom_forms_sundar_assign_3_form.Q2, Q3: @custom_forms_sundar_assign_3_form.Q3, Q4: @custom_forms_sundar_assign_3_form.Q4 } }
    assert_redirected_to custom_forms_sundar_assign_3_form_url(@custom_forms_sundar_assign_3_form)
  end

  test "should destroy custom_forms_sundar_assign_3_form" do
    assert_difference('CustomForms::SundarAssign3Form.count', -1) do
      delete custom_forms_sundar_assign_3_form_url(@custom_forms_sundar_assign_3_form)
    end

    assert_redirected_to custom_forms_sundar_assign_3_forms_url
  end
end
