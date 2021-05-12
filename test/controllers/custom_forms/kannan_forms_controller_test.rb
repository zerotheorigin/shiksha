require 'test_helper'

class CustomForms::KannanFormsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_forms_kannan_form = custom_forms_kannan_forms(:one)
  end

  test "should get index" do
    get custom_forms_kannan_forms_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_forms_kannan_form_url
    assert_response :success
  end

  test "should create custom_forms_kannan_form" do
    assert_difference('CustomForms::KannanForm.count') do
      post custom_forms_kannan_forms_url, params: { custom_forms_kannan_form: { question1: @custom_forms_kannan_form.question1, question2: @custom_forms_kannan_form.question2 } }
    end

    assert_redirected_to custom_forms_kannan_form_url(CustomForms::KannanForm.last)
  end

  test "should show custom_forms_kannan_form" do
    get custom_forms_kannan_form_url(@custom_forms_kannan_form)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_forms_kannan_form_url(@custom_forms_kannan_form)
    assert_response :success
  end

  test "should update custom_forms_kannan_form" do
    patch custom_forms_kannan_form_url(@custom_forms_kannan_form), params: { custom_forms_kannan_form: { question1: @custom_forms_kannan_form.question1, question2: @custom_forms_kannan_form.question2 } }
    assert_redirected_to custom_forms_kannan_form_url(@custom_forms_kannan_form)
  end

  test "should destroy custom_forms_kannan_form" do
    assert_difference('CustomForms::KannanForm.count', -1) do
      delete custom_forms_kannan_form_url(@custom_forms_kannan_form)
    end

    assert_redirected_to custom_forms_kannan_forms_url
  end
end
