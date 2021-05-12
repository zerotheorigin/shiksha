require "application_system_test_case"

class CustomForms::AnandYogoListsTest < ApplicationSystemTestCase
  setup do
    @custom_forms_anand_yogo_list = custom_forms_anand_yogo_lists(:one)
  end

  test "visiting the index" do
    visit custom_forms_anand_yogo_lists_url
    assert_selector "h1", text: "Custom Forms/Anand Yogo Lists"
  end

  test "creating a Anand yogo list" do
    visit custom_forms_anand_yogo_lists_url
    click_on "New Custom Forms/Anand Yogo List"

    fill_in "Age", with: @custom_forms_anand_yogo_list.age
    fill_in "Dob", with: @custom_forms_anand_yogo_list.dob
    fill_in "Email", with: @custom_forms_anand_yogo_list.email
    fill_in "Employer", with: @custom_forms_anand_yogo_list.employer
    fill_in "Gender", with: @custom_forms_anand_yogo_list.gender
    fill_in "Name", with: @custom_forms_anand_yogo_list.name
    click_on "Create Anand yogo list"

    assert_text "Anand yogo list was successfully created"
    click_on "Back"
  end

  test "updating a Anand yogo list" do
    visit custom_forms_anand_yogo_lists_url
    click_on "Edit", match: :first

    fill_in "Age", with: @custom_forms_anand_yogo_list.age
    fill_in "Dob", with: @custom_forms_anand_yogo_list.dob
    fill_in "Email", with: @custom_forms_anand_yogo_list.email
    fill_in "Employer", with: @custom_forms_anand_yogo_list.employer
    fill_in "Gender", with: @custom_forms_anand_yogo_list.gender
    fill_in "Name", with: @custom_forms_anand_yogo_list.name
    click_on "Update Anand yogo list"

    assert_text "Anand yogo list was successfully updated"
    click_on "Back"
  end

  test "destroying a Anand yogo list" do
    visit custom_forms_anand_yogo_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Anand yogo list was successfully destroyed"
  end
end
