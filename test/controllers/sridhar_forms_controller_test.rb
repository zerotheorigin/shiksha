require 'test_helper'

class SridharFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sridhar_form = sridhar_forms(:one)
  end

  test "should get index" do
    get sridhar_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_sridhar_form_url
    assert_response :success
  end

  test "should create sridhar_form" do
    assert_difference('SridharForm.count') do
      post sridhar_forms_url, params: { sridhar_form: { age: @sridhar_form.age, designation: @sridhar_form.designation, dob: @sridhar_form.dob, doj: @sridhar_form.doj, employer: @sridhar_form.employer, name: @sridhar_form.name, sex: @sridhar_form.sex } }
    end

    assert_redirected_to sridhar_form_url(SridharForm.last)
  end

  test "should show sridhar_form" do
    get sridhar_form_url(@sridhar_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_sridhar_form_url(@sridhar_form)
    assert_response :success
  end

  test "should update sridhar_form" do
    patch sridhar_form_url(@sridhar_form), params: { sridhar_form: { age: @sridhar_form.age, designation: @sridhar_form.designation, dob: @sridhar_form.dob, doj: @sridhar_form.doj, employer: @sridhar_form.employer, name: @sridhar_form.name, sex: @sridhar_form.sex } }
    assert_redirected_to sridhar_form_url(@sridhar_form)
  end

  test "should destroy sridhar_form" do
    assert_difference('SridharForm.count', -1) do
      delete sridhar_form_url(@sridhar_form)
    end

    assert_redirected_to sridhar_forms_url
  end
end
