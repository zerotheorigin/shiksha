require 'test_helper'

class CustomForms::TamilFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_forms_tamil_form = custom_forms_tamil_forms(:one)
  end

  test "should get index" do
    get custom_forms_tamil_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_forms_tamil_form_url
    assert_response :success
  end

  test "should create custom_forms_tamil_form" do
    assert_difference('CustomForms::TamilForm.count') do
      post custom_forms_tamil_forms_url, params: { custom_forms_tamil_form: { district: @custom_forms_tamil_form.district, dob: @custom_forms_tamil_form.dob, email: @custom_forms_tamil_form.email, name: @custom_forms_tamil_form.name, pincode: @custom_forms_tamil_form.pincode, place: @custom_forms_tamil_form.place } }
    end

    assert_redirected_to custom_forms_tamil_form_url(CustomForms::TamilForm.last)
  end

  test "should show custom_forms_tamil_form" do
    get custom_forms_tamil_form_url(@custom_forms_tamil_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_forms_tamil_form_url(@custom_forms_tamil_form)
    assert_response :success
  end

  test "should update custom_forms_tamil_form" do
    patch custom_forms_tamil_form_url(@custom_forms_tamil_form), params: { custom_forms_tamil_form: { district: @custom_forms_tamil_form.district, dob: @custom_forms_tamil_form.dob, email: @custom_forms_tamil_form.email, name: @custom_forms_tamil_form.name, pincode: @custom_forms_tamil_form.pincode, place: @custom_forms_tamil_form.place } }
    assert_redirected_to custom_forms_tamil_form_url(@custom_forms_tamil_form)
  end

  test "should destroy custom_forms_tamil_form" do
    assert_difference('CustomForms::TamilForm.count', -1) do
      delete custom_forms_tamil_form_url(@custom_forms_tamil_form)
    end

    assert_redirected_to custom_forms_tamil_forms_url
  end
end
