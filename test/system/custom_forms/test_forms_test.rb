require "application_system_test_case"

class CustomForms::TestFormsTest < ApplicationSystemTestCase
  setup do
    @custom_forms_test_form = custom_forms_test_forms(:one)
  end

  test "visiting the index" do
    visit custom_forms_test_forms_url
    assert_selector "h1", text: "Custom Forms/Test Forms"
  end

  test "creating a Test form" do
    visit custom_forms_test_forms_url
    click_on "New Custom Forms/Test Form"

    fill_in "Q1", with: @custom_forms_test_form.Q1
    fill_in "Q2", with: @custom_forms_test_form.Q2
    fill_in "Q3", with: @custom_forms_test_form.Q3
    fill_in "Q4", with: @custom_forms_test_form.Q4
    click_on "Create Test form"

    assert_text "Test form was successfully created"
    click_on "Back"
  end

  test "updating a Test form" do
    visit custom_forms_test_forms_url
    click_on "Edit", match: :first

    fill_in "Q1", with: @custom_forms_test_form.Q1
    fill_in "Q2", with: @custom_forms_test_form.Q2
    fill_in "Q3", with: @custom_forms_test_form.Q3
    fill_in "Q4", with: @custom_forms_test_form.Q4
    click_on "Update Test form"

    assert_text "Test form was successfully updated"
    click_on "Back"
  end

  test "destroying a Test form" do
    visit custom_forms_test_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test form was successfully destroyed"
  end
end
