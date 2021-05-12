require 'test_helper'

class CustomForms::AdmissionFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_forms_admission_form = custom_forms_admission_forms(:one)
  end

  test "should get index" do
    get custom_forms_admission_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_forms_admission_form_url
    assert_response :success
  end

  test "should create custom_forms_admission_form" do
    assert_difference('CustomForms::AdmissionForm.count') do
      post custom_forms_admission_forms_url, params: { custom_forms_admission_form: { address: @custom_forms_admission_form.address, age: @custom_forms_admission_form.age, dob: @custom_forms_admission_form.dob, fathers_name: @custom_forms_admission_form.fathers_name, gender: @custom_forms_admission_form.gender, name: @custom_forms_admission_form.name, phone_no: @custom_forms_admission_form.phone_no } }
    end

    assert_redirected_to custom_forms_admission_form_url(CustomForms::AdmissionForm.last)
  end

  test "should show custom_forms_admission_form" do
    get custom_forms_admission_form_url(@custom_forms_admission_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_forms_admission_form_url(@custom_forms_admission_form)
    assert_response :success
  end

  test "should update custom_forms_admission_form" do
    patch custom_forms_admission_form_url(@custom_forms_admission_form), params: { custom_forms_admission_form: { address: @custom_forms_admission_form.address, age: @custom_forms_admission_form.age, dob: @custom_forms_admission_form.dob, fathers_name: @custom_forms_admission_form.fathers_name, gender: @custom_forms_admission_form.gender, name: @custom_forms_admission_form.name, phone_no: @custom_forms_admission_form.phone_no } }
    assert_redirected_to custom_forms_admission_form_url(@custom_forms_admission_form)
  end

  test "should destroy custom_forms_admission_form" do
    assert_difference('CustomForms::AdmissionForm.count', -1) do
      delete custom_forms_admission_form_url(@custom_forms_admission_form)
    end

    assert_redirected_to custom_forms_admission_forms_url
  end
end
