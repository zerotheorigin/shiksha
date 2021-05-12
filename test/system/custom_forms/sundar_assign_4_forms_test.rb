require "application_system_test_case"

class CustomForms::SundarAssign4FormsTest < ApplicationSystemTestCase
  setup do
    @custom_forms_sundar_assign_4_form = custom_forms_sundar_assign_4_forms(:one)
  end

  test "visiting the index" do
    visit custom_forms_sundar_assign_4_forms_url
    assert_selector "h1", text: "Custom Forms/Sundar Assign4 Forms"
  end

  test "creating a Sundar assign 4 form" do
    visit custom_forms_sundar_assign_4_forms_url
    click_on "New Custom Forms/Sundar Assign4 Form"

    fill_in "Q1", with: @custom_forms_sundar_assign_4_form.Q1
    fill_in "Q2", with: @custom_forms_sundar_assign_4_form.Q2
    fill_in "Q3", with: @custom_forms_sundar_assign_4_form.Q3
    fill_in "Q4", with: @custom_forms_sundar_assign_4_form.Q4
    click_on "Create Sundar assign 4 form"

    assert_text "Sundar assign 4 form was successfully created"
    click_on "Back"
  end

  test "updating a Sundar assign 4 form" do
    visit custom_forms_sundar_assign_4_forms_url
    click_on "Edit", match: :first

    fill_in "Q1", with: @custom_forms_sundar_assign_4_form.Q1
    fill_in "Q2", with: @custom_forms_sundar_assign_4_form.Q2
    fill_in "Q3", with: @custom_forms_sundar_assign_4_form.Q3
    fill_in "Q4", with: @custom_forms_sundar_assign_4_form.Q4
    click_on "Update Sundar assign 4 form"

    assert_text "Sundar assign 4 form was successfully updated"
    click_on "Back"
  end

  test "destroying a Sundar assign 4 form" do
    visit custom_forms_sundar_assign_4_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sundar assign 4 form was successfully destroyed"
  end
end
