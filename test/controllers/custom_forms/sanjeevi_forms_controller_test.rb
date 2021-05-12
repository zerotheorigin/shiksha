require 'test_helper'

class CustomForms::SanjeeviFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_forms_sanjeevi_form = custom_forms_sanjeevi_forms(:one)
  end

  test "should get index" do
    get custom_forms_sanjeevi_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_forms_sanjeevi_form_url
    assert_response :success
  end

  test "should create custom_forms_sanjeevi_form" do
    assert_difference('CustomForms::SanjeeviForm.count') do
      post custom_forms_sanjeevi_forms_url, params: { custom_forms_sanjeevi_form: { address: @custom_forms_sanjeevi_form.address, age: @custom_forms_sanjeevi_form.age, dob: @custom_forms_sanjeevi_form.dob, email: @custom_forms_sanjeevi_form.email, name: @custom_forms_sanjeevi_form.name, phone: @custom_forms_sanjeevi_form.phone } }
    end

    assert_redirected_to custom_forms_sanjeevi_form_url(CustomForms::SanjeeviForm.last)
  end

  test "should show custom_forms_sanjeevi_form" do
    get custom_forms_sanjeevi_form_url(@custom_forms_sanjeevi_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_forms_sanjeevi_form_url(@custom_forms_sanjeevi_form)
    assert_response :success
  end

  test "should update custom_forms_sanjeevi_form" do
    patch custom_forms_sanjeevi_form_url(@custom_forms_sanjeevi_form), params: { custom_forms_sanjeevi_form: { address: @custom_forms_sanjeevi_form.address, age: @custom_forms_sanjeevi_form.age, dob: @custom_forms_sanjeevi_form.dob, email: @custom_forms_sanjeevi_form.email, name: @custom_forms_sanjeevi_form.name, phone: @custom_forms_sanjeevi_form.phone } }
    assert_redirected_to custom_forms_sanjeevi_form_url(@custom_forms_sanjeevi_form)
  end

  test "should destroy custom_forms_sanjeevi_form" do
    assert_difference('CustomForms::SanjeeviForm.count', -1) do
      delete custom_forms_sanjeevi_form_url(@custom_forms_sanjeevi_form)
    end

    assert_redirected_to custom_forms_sanjeevi_forms_url
  end
end
