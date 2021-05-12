require 'test_helper'

class CustomForms::AnandYogoListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @custom_forms_anand_yogo_list = custom_forms_anand_yogo_lists(:one)
  end

  test "should get index" do
    get custom_forms_anand_yogo_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_custom_forms_anand_yogo_list_url
    assert_response :success
  end

  test "should create custom_forms_anand_yogo_list" do
    assert_difference('CustomForms::AnandYogoList.count') do
      post custom_forms_anand_yogo_lists_url, params: { custom_forms_anand_yogo_list: { age: @custom_forms_anand_yogo_list.age, dob: @custom_forms_anand_yogo_list.dob, email: @custom_forms_anand_yogo_list.email, employer: @custom_forms_anand_yogo_list.employer, gender: @custom_forms_anand_yogo_list.gender, name: @custom_forms_anand_yogo_list.name } }
    end

    assert_redirected_to custom_forms_anand_yogo_list_url(CustomForms::AnandYogoList.last)
  end

  test "should show custom_forms_anand_yogo_list" do
    get custom_forms_anand_yogo_list_url(@custom_forms_anand_yogo_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_custom_forms_anand_yogo_list_url(@custom_forms_anand_yogo_list)
    assert_response :success
  end

  test "should update custom_forms_anand_yogo_list" do
    patch custom_forms_anand_yogo_list_url(@custom_forms_anand_yogo_list), params: { custom_forms_anand_yogo_list: { age: @custom_forms_anand_yogo_list.age, dob: @custom_forms_anand_yogo_list.dob, email: @custom_forms_anand_yogo_list.email, employer: @custom_forms_anand_yogo_list.employer, gender: @custom_forms_anand_yogo_list.gender, name: @custom_forms_anand_yogo_list.name } }
    assert_redirected_to custom_forms_anand_yogo_list_url(@custom_forms_anand_yogo_list)
  end

  test "should destroy custom_forms_anand_yogo_list" do
    assert_difference('CustomForms::AnandYogoList.count', -1) do
      delete custom_forms_anand_yogo_list_url(@custom_forms_anand_yogo_list)
    end

    assert_redirected_to custom_forms_anand_yogo_lists_url
  end
end
