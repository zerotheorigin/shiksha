require "application_system_test_case"

class CustomForms::SanjeeviFormsTest < ApplicationSystemTestCase
  setup do
    @custom_forms_sanjeevi_form = custom_forms_sanjeevi_forms(:one)
  end

  test "visiting the index" do
    visit custom_forms_sanjeevi_forms_url
    assert_selector "h1", text: "Custom Forms/Sanjeevi Forms"
  end

  test "creating a Sanjeevi form" do
    visit custom_forms_sanjeevi_forms_url
    click_on "New Custom Forms/Sanjeevi Form"

    fill_in "Address", with: @custom_forms_sanjeevi_form.address
    fill_in "Age", with: @custom_forms_sanjeevi_form.age
    fill_in "Dob", with: @custom_forms_sanjeevi_form.dob
    fill_in "Email", with: @custom_forms_sanjeevi_form.email
    fill_in "Name", with: @custom_forms_sanjeevi_form.name
    fill_in "Phone", with: @custom_forms_sanjeevi_form.phone
    click_on "Create Sanjeevi form"

    assert_text "Sanjeevi form was successfully created"
    click_on "Back"
  end

  test "updating a Sanjeevi form" do
    visit custom_forms_sanjeevi_forms_url
    click_on "Edit", match: :first

    fill_in "Address", with: @custom_forms_sanjeevi_form.address
    fill_in "Age", with: @custom_forms_sanjeevi_form.age
    fill_in "Dob", with: @custom_forms_sanjeevi_form.dob
    fill_in "Email", with: @custom_forms_sanjeevi_form.email
    fill_in "Name", with: @custom_forms_sanjeevi_form.name
    fill_in "Phone", with: @custom_forms_sanjeevi_form.phone
    click_on "Update Sanjeevi form"

    assert_text "Sanjeevi form was successfully updated"
    click_on "Back"
  end

  test "destroying a Sanjeevi form" do
    visit custom_forms_sanjeevi_forms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sanjeevi form was successfully destroyed"
  end
end
